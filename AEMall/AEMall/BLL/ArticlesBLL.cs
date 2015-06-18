using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class ArticlesBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Articles> Get()
        {
            var model = _db.Articles.OrderByDescending(a => a.CreateTime);
            return model;
        }
		public Articles Get(Guid? Id)
        {
            var item = new Articles();
            if (Id.HasValue)
            {
                item = _db.Articles.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Articles.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Articles.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Articles item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Articles.AddObject(item);
            }
            else
            {                
                _db.Articles.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
        public void Save(Guid? Id, ref Articles item, string galleryItems)
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
                    _db.Pictures.AddObject(new Pictures { Id = Guid.NewGuid(), Name = "文章图片", ArticleId = item.Id, Url = s.Replace("Thumbnails", "Published"), ThumbnailsUrl = s });
                }
                _db.Articles.AddObject(item);
            }
            else
            {
                item.CreateTime = item.CreateTime.HasValue ? item.CreateTime : DateTime.Now;
                foreach (var g in _db.Pictures.Where(a => a.ArticleId == Id))
                {
                    _db.Pictures.DeleteObject(g);
                }
                foreach (string s in galleryList)
                {
                    _db.Pictures.AddObject(new Pictures { Id = Guid.NewGuid(), Name = "文章图片", ArticleId = item.Id, Url = s.Replace("Thumbnails", "Published"), ThumbnailsUrl = s });
                }
                _db.Articles.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Articles.DeleteObject(_db.Articles.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
