using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class ProductsToRegionsBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<ProductsToRegions> Get()
        {
            var model = _db.ProductsToRegions.OrderBy(a => a.Id);
            return model;
        }
		public ProductsToRegions Get(Guid? Id)
        {
            var item = new ProductsToRegions();
            if (Id.HasValue)
            {
                item = _db.ProductsToRegions.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.ProductsToRegions.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.ProductsToRegions.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref ProductsToRegions item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.ProductsToRegions.AddObject(item);
            }
            else
            {                
                _db.ProductsToRegions.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.ProductsToRegions.DeleteObject(_db.ProductsToRegions.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
