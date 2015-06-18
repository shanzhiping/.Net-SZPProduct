using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class StatisticsBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Statistics> Get()
        {
            var model = _db.Statistics.OrderBy(a => a.Id);
            return model;
        }
		public Statistics Get(Guid? Id)
        {
            var item = new Statistics();
            if (Id.HasValue)
            {
                item = _db.Statistics.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Statistics.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Statistics.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Statistics item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Statistics.AddObject(item);
            }
            else
            {                
                _db.Statistics.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Statistics.DeleteObject(_db.Statistics.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
