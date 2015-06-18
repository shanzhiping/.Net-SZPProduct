using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class ConfigsBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Configs> Get()
        {
            var model = _db.Configs.OrderBy(a => a.Id); 
            return model;
        }
		public Configs Get(Guid? Id)
        {
            var item = new Configs();
            if (Id.HasValue)
            {
                item = _db.Configs.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
        public Configs Get(string name)
        {
            var item = new Configs();
            if (item != null)
            {
                item = _db.Configs.SingleOrDefault(a => a.Name.Equals(name) && a.IsValid.HasValue && a.IsValid.Value);
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Configs.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Configs.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Configs item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Configs.AddObject(item);
            }
            else
            {                
                _db.Configs.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Configs.DeleteObject(_db.Configs.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
