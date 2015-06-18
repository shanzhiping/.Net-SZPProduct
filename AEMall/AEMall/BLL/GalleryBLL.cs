using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class GalleryBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Gallery> Get()
        {
            var model = _db.Gallery.OrderBy(a => a.Id);
            return model;
        }
        public IQueryable<Gallery> GetByProductId(Guid productId)
        {
            var model = _db.Gallery.Where(a => a.ProductId.Value.Equals(productId)).OrderBy(b=>b.Name);
            return model;
        }
		public Gallery Get(Guid? Id)
        {
            var item = new Gallery();
            if (Id.HasValue)
            {
                item = _db.Gallery.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
        public string GetFirstPictureOriginal(Guid productId)
        {
            string picture = "/Content/misc/global/images/empty.jpg";
            var items = GetByProductId(productId);
            if (items.Count() > 0)
            {
                picture = items.First().Url;
            }
            return picture;
        }
        public string GetFirstPicture(Guid productId)
        {
            string picture = "/Content/misc/global/images/empty.jpg";
            var items = GetByProductId(productId);
            if (items.Count() > 0)
            {
                picture = items.First().ThumbnailsUrl;
            }
            return picture;
        }
        public string GetAllPictures(Guid productId)
        {
            string picture = string.Empty;
            var items = GetByProductId(productId);
            foreach (var item in items)
            {
                picture += "<li><a href=\"javascript:void(0);\"><img src=\""+item.ThumbnailsUrl+"\" alt=\"\" /></a></li>";
            }
            return picture;
        }
        public string GetStringByProductId(Guid? id)
        {
            string str = string.Empty;
            var models = _db.Gallery.Where(a => a.ProductId == id);
            foreach (var item in models)
            {
                str += item.ThumbnailsUrl.Replace('\\','/') + ";";
            }
            return str;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Gallery.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Gallery.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Gallery item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Gallery.AddObject(item);
            }
            else
            {                
                _db.Gallery.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Gallery.DeleteObject(_db.Gallery.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }
         public void DeleteByProductId(Guid Id)
         {
             foreach (var item in GetByProductId(Id))
             {
                 _db.Gallery.DeleteObject(item);
             }
             _db.SaveChanges();
         }	    
    }
}
