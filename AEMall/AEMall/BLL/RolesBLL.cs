using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class RolesBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Roles> Get()
        {
            var model = _db.Roles.OrderBy(a => a.Id);
            return model;
        }
		public Roles Get(Guid? Id)
        {
            var item = new Roles();
            if (Id.HasValue)
            {
                item = _db.Roles.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Roles.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Roles.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Roles item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Roles.AddObject(item);
            }
            else
            {                
                _db.Roles.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Roles.DeleteObject(_db.Roles.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
