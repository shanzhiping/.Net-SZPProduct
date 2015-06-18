using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class UserProfileBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<UserProfile> Get()
        {
            var model = _db.UserProfile.OrderBy(a => a.Id);
            return model;
        }
		public UserProfile Get(Guid? Id)
        {
            var item = new UserProfile();
            if (Id.HasValue)
            {
                item = _db.UserProfile.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.UserProfile.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.UserProfile.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref UserProfile item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.UserProfile.AddObject(item);
            }
            else
            {                
                _db.UserProfile.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.UserProfile.DeleteObject(_db.UserProfile.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
