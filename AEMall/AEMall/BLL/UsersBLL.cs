using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;

namespace BLL
{
    public class UsersBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Users> Get()
        {
            var model = _db.Users.OrderBy(a => a.Id);
            return model;
        }
		public Users Get(Guid? Id)
        {
            var item = new Users();
            if (Id.HasValue)
            {
                item = _db.Users.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
        public Users Get(string name)
        {
            return _db.Users.SingleOrDefault(a => a.Name.Equals(name));
        }
        public string GetName(Guid Id)
        {
            string name = "您好，游客";
            var user = Get(Id);
            if (user != null)
                name = user.Name;
            return name;
        }
        public bool CheckUser(Guid Id, string password)
        {
            return Get(Id).Password.Equals((Id + password).GetMD5());
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Users.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Users.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Users item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Users.AddObject(item);
            }
            else
            {                
                _db.Users.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Users.DeleteObject(_db.Users.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }
         /// <summary>
         /// 更改密码
         /// </summary>
         /// <param name="username"></param>
         /// <param name="item"></param>
         public void ChangePassword(Guid Id, ChangePasswordModel item)
         {
             string msg = "";
             if (CheckUser(Id, item.OldPassword))
             {
                 //执行修改密码
                 var item1 = Get(Id);
                 item1.Password = (Id + item.NewPassword).GetMD5();
                 _db.SaveChanges();
             }
             else
             {
                 msg = "密码修改失败！原密码错误。";
             }
             if (!string.IsNullOrEmpty(msg))
             {
                 throw new Exception(msg);
             }
         }
    }
}
