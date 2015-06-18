using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class ShippingAddressBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<ShippingAddress> Get()
        {
            var model = _db.ShippingAddress.OrderBy(a => a.Id);
            return model;
        }
		public ShippingAddress Get(Guid? Id)
        {
            var item = new ShippingAddress();
            if (Id.HasValue)
            {
                item = _db.ShippingAddress.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.ShippingAddress.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.ShippingAddress.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref ShippingAddress item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.ShippingAddress.AddObject(item);
            }
            else
            {                
                _db.ShippingAddress.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.ShippingAddress.DeleteObject(_db.ShippingAddress.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
