using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class UserRanksBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<UserRanks> Get()
        {
            var model = _db.UserRanks.OrderBy(a => a.Id);
            return model;
        }
		public UserRanks Get(Guid? Id)
        {
            var item = new UserRanks();
            if (Id.HasValue)
            {
                item = _db.UserRanks.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.UserRanks.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.UserRanks.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref UserRanks item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.UserRanks.AddObject(item);
            }
            else
            {                
                _db.UserRanks.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.UserRanks.DeleteObject(_db.UserRanks.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
