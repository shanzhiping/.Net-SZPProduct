using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class ProductsBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Products> Get()
        {
            var model = _db.Products.OrderByDescending(a => a.CreateTime);
            return model;
        }
        public IQueryable<Products> GetByTypeId(Guid? TypeId)
        {
            var model = _db.Products.Where(a => a.ProductsInTypes.Any(b => b.TypeId == TypeId)).OrderByDescending(c=>c.CreateTime);
            return model;
        }
        public IQueryable<Products> GetByTypeName(string Name)
        {
            var model = _db.Products.Where(a =>a.IsRecommended.Value && a.ProductsInTypes.Any(b => b.ProductTypes.Name == Name)).OrderByDescending(c => c.CreateTime);
            return model;
        }
		public Products Get(Guid? Id)
        {
            var item = new Products();
            if (Id.HasValue)
            {
                item = _db.Products.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Products.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Products.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Products item, string galleryItems)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            galleryItems = galleryItems.Remove(galleryItems.Length - 1);
            string[] galleryList = galleryItems.Split(';');
            if (!Id.HasValue)
            {
                item.CreateTime = DateTime.Now;
                item.Id = Guid.NewGuid();
                foreach (string s in galleryList)
                {
                    _db.Gallery.AddObject(new Gallery { Id = Guid.NewGuid(), Name="商品图片", ProductId = item.Id, Url = s.Replace("Thumbnails", "Published"), ThumbnailsUrl = s });
                }
                _db.Products.AddObject(item);
            }
            else
            {
                item.CreateTime = item.CreateTime.HasValue? item.CreateTime:DateTime.Now;
                foreach (var g in _db.Gallery.Where(a=>a.ProductId == Id))
                {
                    _db.Gallery.DeleteObject(g);
                }
                foreach (string s in galleryList)
                {
                    _db.Gallery.AddObject(new Gallery { Id = Guid.NewGuid(), Name = "商品图片", ProductId = item.Id, Url = s.Replace("Thumbnails", "Published"), ThumbnailsUrl = s });
                }
                _db.Products.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Products.DeleteObject(_db.Products.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
