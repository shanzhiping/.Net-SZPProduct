using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class OrderItemsBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<OrderItems> Get()
        {
            var model = _db.OrderItems.OrderBy(a => a.Id);
            return model;
        }
		public OrderItems Get(Guid? Id)
        {
            var item = new OrderItems();
            if (Id.HasValue)
            {
                item = _db.OrderItems.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.OrderItems.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.OrderItems.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref OrderItems item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.OrderItems.AddObject(item);
            }
            else
            {                
                _db.OrderItems.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.OrderItems.DeleteObject(_db.OrderItems.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
