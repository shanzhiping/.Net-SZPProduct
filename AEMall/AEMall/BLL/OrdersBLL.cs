using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class OrdersBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Orders> Get()
        {
            var model = _db.Orders.OrderBy(a => a.Id);
            return model;
        }
		public Orders Get(Guid? Id)
        {
            var item = new Orders();
            if (Id.HasValue)
            {
                item = _db.Orders.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Orders.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Orders.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Orders item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Orders.AddObject(item);
            }
            else
            {                
                _db.Orders.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Orders.DeleteObject(_db.Orders.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
