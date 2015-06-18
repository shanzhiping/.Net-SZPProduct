using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class UsersInRolesBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<UsersInRoles> Get()
        {
            var model = _db.UsersInRoles.OrderBy(a => a.Id);
            return model;
        }
		public UsersInRoles Get(Guid? Id)
        {
            var item = new UsersInRoles();
            if (Id.HasValue)
            {
                item = _db.UsersInRoles.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.UsersInRoles.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.UsersInRoles.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref UsersInRoles item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.UsersInRoles.AddObject(item);
            }
            else
            {                
                _db.UsersInRoles.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.UsersInRoles.DeleteObject(_db.UsersInRoles.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
