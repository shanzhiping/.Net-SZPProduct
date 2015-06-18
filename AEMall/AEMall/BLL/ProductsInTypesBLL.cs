using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class ProductsInTypesBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<ProductsInTypes> Get()
        {
            var model = _db.ProductsInTypes.OrderBy(a => a.Id);
            return model;
        }
        public IQueryable<ProductsInTypes> Get(Guid productId)
        {
            return _db.ProductsInTypes.Where(a => a.ProductId == productId);
        }
		public ProductsInTypes Get(Guid? Id)
        {
            var item = new ProductsInTypes();
            if (Id.HasValue)
            {
                item = _db.ProductsInTypes.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.ProductsInTypes.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.ProductsInTypes.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref ProductsInTypes item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.ProductsInTypes.AddObject(item);
            }
            else
            {                
                _db.ProductsInTypes.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
        public void Insert(Guid productId, Guid typeId)
        {
            var item = new ProductsInTypes() { Id = Guid.NewGuid(), Name = string.Empty, ProductId = productId, TypeId = typeId };
            _db.ProductsInTypes.AddObject(item);
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.ProductsInTypes.DeleteObject(_db.ProductsInTypes.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }
         public void Delete(Guid productId)
         {
             var items = Get(productId);
             foreach (var item in items)
             {
                 _db.ProductsInTypes.DeleteObject(item);
             }
             _db.SaveChanges();
         }
    }
}
