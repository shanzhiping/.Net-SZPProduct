using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;
using System.Collections.Generic;
using System.Web.Mvc;
using System.Text;

namespace BLL
{
    public class RegionsBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<Regions> Get()
        {
            var model = _db.Regions.OrderBy(a => a.Sequence);
            return model;
        }
        public List<SelectListItem> GetDropdownlist(Guid? pId)
        {
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem() { Text = "请选择所属地区", Value = "" });
            List<Regions> regions = Get().ToList();
            foreach (var item in regions.Where(a => !a.ParentId.HasValue))
            {
                items.Add(new SelectListItem() { Text = "╋" + item.Name, Value = item.Id.ToString(), Selected=pId.HasValue && item.Id.Equals(pId)});
                List<SelectListItem> childList = GetChildren(item.Id, "└", regions, 0);
                foreach (var citem in childList)
                {
                    items.Add(new SelectListItem() { Text = citem.Text, Value = citem.Value, Selected=pId.HasValue && citem.Value.Equals(pId.Value.ToString()) });
                }
            }
            return items;
        }
        public List<SelectListItem> GetChildren(Guid? parentId, string separator, List<Regions> list, int level)
        {
            level++;
            string s = string.Empty;
            List<SelectListItem> children = new List<SelectListItem>();
            List<Regions> types = list.Where(a => a.ParentId == parentId).OrderBy(b => b.Sequence).ToList();
            for (int i = 0; i < level; i++)
            {
                s += "　";
            }
            foreach (var item in types)
            {
                children.Add(new SelectListItem() { Text = s + separator + item.Name, Value = item.Id.ToString() });
                children.AddRange(GetChildren(item.Id, "└", list, level));
            }
            return children;
        }
        public IQueryable<Regions> GetChildren(Guid parentId)
        {
            var model = _db.Regions.Where(a => a.ParentId.Value.Equals(parentId)).OrderBy(b => b.Sequence);
            return model;
        }
        public string GetTreeList(IQueryable<Regions> models)
        {
            StringBuilder tree = new StringBuilder();
            foreach (var item in models)
            {
                if (item.ParentId.HasValue)
                {
                    tree.Append("<tr id=\"item-" + item.Id + "\" class=\"child-of-item-" + item.ParentId.Value + "\">");
                    tree.Append("<td>");
                }
                else
                {
                    tree.Append("<tr id=\"item-" + item.Id + "\"><td>");
                }
                tree.Append(item.Name);
                tree.Append("</td>");
                tree.Append("<td class=\"center operation\">");
                tree.Append("<a href=/Admin/Regions/Edit/" + item.Id + "  data-ajax-update=\"#Main\" data-ajax-mode=\"replace\" data-ajax-method=\"Get\" data-ajax=\"true\">[编辑]</a>");
                tree.Append("<a href=/Admin/Regions/Delete/" + item.Id + "  data-ajax-update=\"#Main\" data-ajax-mode=\"replace\" data-ajax-method=\"Delete\" data-ajax-confirm=\" 您确定要删除该记录吗？该操作不可恢复！\" data-ajax=\"true\">[删除]</a>");
                tree.Append("</td></tr>");
                if (item.Regions1.Count > 0)
                {
                    tree.Append(GetTreeList(GetChildren(item.Id)));
                }
            }
            return tree.ToString();
        }
		public Regions Get(Guid? Id)
        {
            var item = new Regions();
            if (Id.HasValue)
            {
                item = _db.Regions.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.Regions.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.Regions.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref Regions item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.Regions.AddObject(item);
            }
            else
            {                
                _db.Regions.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.Regions.DeleteObject(_db.Regions.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
