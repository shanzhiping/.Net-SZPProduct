using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class LogsBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Logs> Get()
        {
            var model = _db.Logs.OrderByDescending(a => a.CreateTime);
            return model;
        }
		public Logs Get(Guid? Id)
        {
            var item = new Logs();
            if (Id.HasValue)
            {
                item = _db.Logs.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Logs.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Logs.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Logs item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Logs.AddObject(item);
            }
            else
            {                
                _db.Logs.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Logs.DeleteObject(_db.Logs.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
