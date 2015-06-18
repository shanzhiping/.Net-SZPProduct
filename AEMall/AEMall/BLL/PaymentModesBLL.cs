using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class PaymentModesBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<PaymentModes> Get()
        {
            var model = _db.PaymentModes.OrderBy(a => a.Id);
            return model;
        }
		public PaymentModes Get(Guid? Id)
        {
            var item = new PaymentModes();
            if (Id.HasValue)
            {
                item = _db.PaymentModes.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.PaymentModes.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.PaymentModes.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref PaymentModes item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.PaymentModes.AddObject(item);
            }
            else
            {                
                _db.PaymentModes.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.PaymentModes.DeleteObject(_db.PaymentModes.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
