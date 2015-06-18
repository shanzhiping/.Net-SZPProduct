using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class ShoppingCartBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<ShoppingCart> Get()
        {
            var model = _db.ShoppingCart.OrderBy(a => a.Id);
            return model;
        }
		public ShoppingCart Get(Guid? Id)
        {
            var item = new ShoppingCart();
            if (Id.HasValue)
            {
                item = _db.ShoppingCart.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.ShoppingCart.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.ShoppingCart.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref ShoppingCart item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.ShoppingCart.AddObject(item);
            }
            else
            {                
                _db.ShoppingCart.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.ShoppingCart.DeleteObject(_db.ShoppingCart.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
