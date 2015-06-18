using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class PicturesBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Pictures> Get()
        {
            var model = _db.Pictures.OrderBy(a => a.Id);
            return model;
        }
        public IQueryable<Pictures> GetByArticleId(Guid articleId)
        {
            var model = _db.Pictures.Where(a => a.ArticleId.Value.Equals(articleId)).OrderBy(b => b.Name);
            return model;
        }
        public string GetFirstPictureOriginal(Guid articleId)
        {
            string picture = "/Content/misc/global/images/empty.jpg";
            var items = GetByArticleId(articleId);
            if (items.Count() > 0)
            {
                picture = items.First().Url.Replace("Published","Original");
            }
            return picture;
        }
        public string GetFirstPicture(Guid articleId)
        {
            string picture = "/Content/misc/global/images/empty.jpg";
            var items = GetByArticleId(articleId);
            if (items.Count() > 0)
            {
                picture = items.First().ThumbnailsUrl;
            }
            return picture;
        }
		public Pictures Get(Guid? Id)
        {
            var item = new Pictures();
            if (Id.HasValue)
            {
                item = _db.Pictures.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
        public string GetStringByArticleId(Guid? id)
        {
            string str = string.Empty;
            var models = _db.Pictures.Where(a => a.ArticleId == id);
            foreach (var item in models)
            {
                str += item.ThumbnailsUrl.Replace('\\', '/') + ";";
            }
            return str;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Pictures.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Pictures.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Pictures item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Pictures.AddObject(item);
            }
            else
            {                
                _db.Pictures.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Pictures.DeleteObject(_db.Pictures.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
