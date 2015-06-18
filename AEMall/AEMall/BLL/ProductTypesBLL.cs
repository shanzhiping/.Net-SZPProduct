using System;
using System.Data;
using System.Linq;
using System.Web;
using Models;
using System.Text;
using System.Collections.Generic;
using System.Web.Mvc;

namespace BLL
{
    public class ProductTypesBLL
    {       
		ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
		public IQueryable<ProductTypes> Get()
        {
            var model = _db.ProductTypes.OrderBy(a => a.Sequence);
            return model;
        }
        public List<SelectListItem> GetDropdownlist(Guid? pId)
        {
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem() {Text="请选择分类", Value="" });
            List<ProductTypes> types = Get().ToList();
            foreach (var item in types.Where(a=>!a.ParentId.HasValue))
            {
                items.Add(new SelectListItem() { Text = "╋" + item.Name, Value = item.Id.ToString(), Selected=pId.HasValue && item.Id.Equals(pId)});
                List<SelectListItem> childList = GetChildren(item.Id, "└", types,0);
                foreach (var citem in childList)
                {
                    items.Add(new SelectListItem() { Text=citem.Text, Value=citem.Value, Selected=pId.HasValue && citem.Value.Equals(pId.Value.ToString())});
                }
            }
            return items;
        }
        public List<SelectListItem> GetChildren(Guid? parentId,string separator, List<ProductTypes> list,int level)
        {
            level++;
            string s = string.Empty;
            List<SelectListItem> children = new List<SelectListItem>();
            List<ProductTypes> types = list.Where(a => a.ParentId == parentId).OrderBy(b => b.Sequence).ToList();
            for (int i = 0; i < level; i++)
            {
                s += "　";
            }
            foreach (var item in types)
            {
                children.Add(new SelectListItem() { Text = s+separator + item.Name, Value = item.Id.ToString()});
                children.AddRange(GetChildren(item.Id, "└", list, level));
            }
            return children;
        }
        public IQueryable<ProductTypes> GetChildren(Guid parentId)
        {
            var model = _db.ProductTypes.Where(a => a.ParentId.Value.Equals(parentId)).OrderBy(b => b.Sequence);
            return model;
        }
        public IQueryable<ProductTypes> GetLeftTree()
        {
            var model = _db.ProductTypes.Where(a=>a.ProductTypes2.Name.Equals("按地域分")).Take(11).OrderBy(b => b.Sequence);
            return model;
        }
        public IQueryable<ProductTypes> GetTopNav()
        {
            var model = _db.ProductTypes.Where(a => a.ProductTypes2.Name.Equals("按类别分")).Take(6).OrderBy(b => b.Sequence);
            return model;
        }
		public ProductTypes Get(Guid? Id)
        {
            var item = new ProductTypes();
            if (Id.HasValue)
            {
                item = _db.ProductTypes.SingleOrDefault(a => a.Id.Equals(Id.Value));
            }
            return item;
        }
        public string GetTreeList(IQueryable<ProductTypes> models)
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
                    tree.Append("<tr id=\"item-"+item.Id+"\"><td>");
                }
                tree.Append(item.Name);
                tree.Append("</td><td>");
                tree.Append(item.Description);
                tree.Append("</td>");
                tree.Append("<td class=\"center operation\">");
                tree.Append("<a href=/Admin/ProductTypes/Edit/"+item.Id+"  data-ajax-update=\"#Main\" data-ajax-mode=\"replace\" data-ajax-method=\"Get\" data-ajax=\"true\">[编辑]</a>");
                tree.Append("<a href=/Admin/ProductTypes/Delete/" + item.Id + "  data-ajax-update=\"#Main\" data-ajax-mode=\"replace\" data-ajax-method=\"Delete\" data-ajax-confirm=\" 您确定要删除该记录吗？该操作不可恢复！\" data-ajax=\"true\">[删除]</a>");
                tree.Append("</td></tr>");
                if (item.ProductTypes1.Count > 0)
                {
                    tree.Append(GetTreeList(GetChildren(item.Id)));
                }
            }
            return tree.ToString();
        }
        public string GetTypelist(Guid? hotelId)
        {
            StringBuilder sb = new StringBuilder();
            List<ProductTypes> types = Get().ToList();
            sb.Append("<table style='margin-left:5px;width:163px'>");
            foreach (var item in types.Where(a => !a.ParentId.HasValue))
            {
                sb.Append("<tr><td class='ui-state-default'>");
                sb.Append(item.Name);
                sb.Append("</td></tr>");
                sb.Append(GetTypeChildren(item.Id, "└", types, 0, hotelId));
            }
            sb.Append("</table>");
            return sb.ToString();
        }
        public string GetTypeChildren(Guid? parentId, string separator, List<ProductTypes> list, int level, Guid? dft)
        {
            level++;
            string s = string.Empty;
            StringBuilder children = new StringBuilder();
            List<ProductTypes> types = list.Where(a => a.ParentId == parentId).OrderBy(b => b.Sequence).ToList();
            for (int i = 0; i < level; i++)
            {
                s += "　";
            }
            foreach (var item in types)
            {
                children.Append("<tr><td>");
                children.Append(s + separator + "<input type='radio' name='" + parentId.Value.ToString() + "' id='" + item.Id + "'  value='" + item.Id + "' " + (item.ProductsInTypes.Any(a => a.ProductId.Equals(dft)) ? "checked" : "") + "><label for='"+item.Id+"'>"+item.Name+"</label><br />");
                children.Append("</td></tr>");
                children.Append(GetTypeChildren(item.Id, "└", list, level, dft));
            }
            return children.ToString();
        }
        public string GetTypeStaticlist(Guid? productId)
        {
            StringBuilder sb = new StringBuilder();
            List<ProductTypes> types = Get().ToList();
            sb.Append("<table style='margin-left:5px;width:163px'>");
            foreach (var item in types.Where(a => !a.ParentId.HasValue))
            {
                sb.Append("<tr><td class='ui-state-default'>");
                sb.Append(item.Name);
                sb.Append("</td></tr>");
                sb.Append(GetTypeStaticChildren(item.Id, "└", types, 0, productId));
            }
            sb.Append("</table>");
            return sb.ToString();
        }
        public string GetTypeStaticChildren(Guid? parentId, string separator, List<ProductTypes> list, int level, Guid? dft)
        {
            level++;
            string s = string.Empty;
            StringBuilder children = new StringBuilder();
            List<ProductTypes> types = list.Where(a => a.ParentId == parentId).OrderBy(b => b.Sequence).ToList();
            for (int i = 0; i < level; i++)
            {
                s += "　";
            }
            foreach (var item in types)
            {
                if (item.ProductsInTypes.Any(a => a.ProductId.Equals(dft)))
                {
                    children.Append("<tr><td>");
                    children.Append(s + separator + item.Name);
                    children.Append("</td></tr>");
                }
                children.Append(GetTypeStaticChildren(item.Id, "└", list, level, dft));
            }
            return children.ToString();
        }
		public bool IsDuplicate(string name)
        {
            bool isDuplicate = false;
            var item = _db.ProductTypes.SingleOrDefault(a => a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public bool IsDuplicateButSelf(Guid? Id, string name)
        {
            bool isDuplicate = false;
            var item = _db.ProductTypes.SingleOrDefault(a => a.Id != Id && a.Name == name);
            if (item != null)
                isDuplicate = true;
            return isDuplicate;
        }
		public void Save(Guid? Id, ref ProductTypes item)
        {
            ExtendedDBModelContainer _db = new ExtendedDBModelContainer();
            if (!Id.HasValue)
            {
                _db.ProductTypes.AddObject(item);
            }
            else
            {                
                _db.ProductTypes.Attach(item);
                _db.ObjectStateManager.ChangeObjectState(item, EntityState.Modified);
            }
            _db.SaveChanges();
        }
		 public void DeleteObject(Guid Id)
        {
            _db.ProductTypes.DeleteObject(_db.ProductTypes.Single(a=>a.Id==Id));
            _db.SaveChanges();
        }	    
    }
}
