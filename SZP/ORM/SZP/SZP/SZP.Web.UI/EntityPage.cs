using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Web.UI;
using System.Collections.Specialized;
using System.Reflection;
using SZP.Entity;
using SZP.Service;
using SZP.Core;
using SZP.Config;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace SZP.Web.UI
{
    /// <summary>
    /// 实体操作页面基类，封装了基本的增、删、查、改方法，通过重载Pre和After方法加额外的处理逻辑
    /// </summary>
    /// <typeparam name="TEntity">对应的实体类</typeparam>
    public abstract partial class EntityPage<TEntity> : PageBase where TEntity : IEntity
    {
        /// <summary>
        /// 实体状态
        /// </summary>
        protected ModelStateDictionary ModelState = new ModelStateDictionary();

        /// <summary>
        /// 实体Service对象，对下级公开
        /// </summary>
        protected BaseService<TEntity> service;
        /// <summary>
        /// 实体变量，对下级公开，可在页面绑定时使用
        /// </summary>
        protected TEntity Model;

        protected IList<TEntity> list;

        public EntityPage()
        {
            //在构造函数中通过强名称创建实体对应的Service对象
            string serviceClass = "SZP.Service." + typeof(TEntity).Name + "Service";
            //动态创建实体对象
            object svs = Activator.CreateInstance("SZP.Service", serviceClass).Unwrap();
            if (svs != null)
            {
                service = (BaseService<TEntity>)svs;
                service.Ip = System.Web.HttpContext.Current.Request.UserHostAddress;
                service.OrganizationalId = LoginHelper.GetCookies().OrganizationId;
            }
            Html.PageContext = this.GetType();
            Html.Load();
        }

        protected override void OnLoad(EventArgs e)
        {
            //GetMethod();
            if (AutoExecuteAction == true)
            {
                string pageName = Request.FilePath.ToLower().Replace(".aspx", "");
                if (pageName.EndsWith("index") || pageName.EndsWith("list"))
                {
                    DoList();
                }
                if (pageName.EndsWith("add"))
                {
                    DoAdd();
                }
                if (pageName.EndsWith("edit"))
                {
                    DoEdit();
                }
                if (pageName.EndsWith("detail"))
                {
                    DoDetail();
                }


            }
            base.OnLoad(e);
        }
        /// <summary>
        /// 查看详细
        /// </summary>
        protected virtual void DoDetail()
        {
            Guid id = Guid.Empty;
            Guid.TryParse(Request["id"], out id);
            if (id.Equals(Guid.Empty) == false)
            {
                Model = service.GetByID(id);
            }

            Page.DataBind();
        }
       

        protected virtual bool AutoExecuteAction
        {
            get { return true; }
        }
        /// <summary>
        /// 根据字段名称直接从请求中创建对象
        /// </summary>
        /// <returns></returns>
        protected virtual TEntity CreateModel()
        {
            //实例化实体类
            TEntity model = Activator.CreateInstance<TEntity>();

            //MetadataTypeAttribute[] attrs = (MetadataTypeAttribute[])model.GetType().GetCustomAttributes(typeof(MetadataTypeAttribute), false);

            //获取实体类中的所有的公共对象
             PropertyInfo[] properties = model.GetType().GetProperties();
            foreach (PropertyInfo property in properties)
            {
                if (property.IsDefined(typeof(DataFieldAttribute), false))
                {
                    DataFieldAttribute[] attrs = (DataFieldAttribute[])property.GetCustomAttributes(typeof(DataFieldAttribute), false);
                    string fieldName = attrs[0].Name;
                    if (fieldName != null && string.IsNullOrEmpty(Request[fieldName]) == false)
                    {
                        try
                        {
                            if (property.PropertyType.Name == "Guid")
                            {
                                // if(property.PropertyType
                                //用索引的方式  在model中找到对应的property并赋值
                                property.SetValue(model, Convert.ChangeType(new Guid(Request[fieldName]), property.PropertyType), null);
                            }
                            else
                            {
                                property.SetValue(model, Convert.ChangeType(Request[fieldName], property.PropertyType), null);
                            }
                        }
                        catch (Exception ex)
                        {
                            //添加错误信息
                            ModelState.Add(new ModelState(fieldName, ex, Request[fieldName]));
                        }
                    }
                }
            }
            return model;
        }
        /// <summary>
        /// 用当前提交的Form集合和QueryString集合填充实体模型
        /// </summary>
        /// <param name="Model">要更新的实体模型</param>
        protected virtual void UpdateModel(TEntity Model)
        {
            List<string> propNames = new List<string>();
            //获取实体类中的所有公共属性
            PropertyInfo[] properties = Model.GetType().GetProperties();
            foreach (PropertyInfo property in properties)
            {
                if (property.IsDefined(typeof(DataFieldAttribute), false))
                {
                    DataFieldAttribute[] attrs = (DataFieldAttribute[])property.GetCustomAttributes(typeof(DataFieldAttribute),false);
                    string fieldName = attrs[0].Name;
                    if (fieldName != null && !string.IsNullOrEmpty(Request[fieldName]))
                    {
                        propNames.Add(fieldName);
                    }
                }
               
            }
            UpdateModel(Model, propNames.ToArray());

        }
        /// <summary>
        /// 用当前提交的Form集合和QueryString集合填充实体模型制定的属性
        /// </summary>
        /// <param name="entity">要更新的实体模型</param>
        /// <param name="includeProperties">指定要更新的属性白名单</param>
        protected virtual void UpdateModel(TEntity entity,string[] includeProperties)
        {
            NameValueCollection datas = new NameValueCollection();
            if (Request.Form != null && Request.Form.Count > 0)
            {
               UpdateModel(Model, Request.Form, includeProperties, null);
            }
            if (Request.QueryString.Count > 0)
            {
                UpdateModel(Model, Request.QueryString, includeProperties, null);
            }
        }
        /// <summary>
        /// 用制定的数据集合更新指定的实体模型
        /// </summary>
        /// <param name="model">需要更新的实体模型</param>
        /// <param name="datas">制定的数据集合</param>
        /// <param name="includeProperties">需要更新的属性白名单</param>
        /// <param name="excludeProperties">不需要更新的属性白名单</param>
        protected virtual void UpdateModel(TEntity model, NameValueCollection datas, string[] includeProperties, string[] excludeProperties)
        {
            List<string> excludes = new List<string>();
            if (excludeProperties != null && excludeProperties.LongLength > 0)
            {
                excludes.AddRange(excludeProperties);
            }
            foreach (string includeProperty in includeProperties)
            {
                if (excludes.Contains(includeProperty) == false)
                {
                    //搜索制定具体名称的公共属性
                    PropertyInfo property = model.GetType().GetProperty(includeProperty,BindingFlags.Instance|BindingFlags.Public|BindingFlags.IgnoreCase);
                    if (property != null && string.IsNullOrEmpty(datas[includeProperty]) == false)
                    {
                        try
                        {
                            if (property.PropertyType.Name == "Guid")
                            {
                                Guid id = Guid.Empty;
                                if (Guid.TryParse(datas[includeProperty], out id))
                                {
                                    property.SetValue(model, Convert.ChangeType(id, property.PropertyType), null);
                                }
                            }
                            else
                            {
                                property.SetValue(model, Convert.ChangeType(datas[includeProperty], property.PropertyType), null);
                            }
                        }
                        catch (Exception ex)
                        {

                            //添加错误信息
                            ModelState.Add(new ModelState(includeProperty, ex,datas[includeProperty]));
                        }
                    }
                }
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="container">父控件</param>
        /// <param name="id">要找的id</param>
        /// <returns>找到的控件</returns>
        Control FindChildControl(Control container, string id)
        {
            Control ct1 = container.FindControl(id);
            if (ct1 != null)
            {
                return ct1;
            }
            else
            {
                foreach (Control  child in container .Controls)
                {
                    ct1 = FindChildControl(child, id);
                    if (ct1 != null)
                    {
                        return ct1;
                    }
                }
            }
            return null;
        }
        /// <summary>
        /// 执行显示
        /// </summary>
        protected virtual void DoList()
        {
            int pageId = 0, pageSize = 0;
            if (Request["page"] != null)
            {
                int.TryParse(Request["page"], out pageId);
            }
           
            if (Request["psize"] != null)
            {
                int.TryParse(Request["psize"], out pageSize);
            }
            //当前索引页
            if (pageId == 0)
            {
                pageId = 1;
            }
            //显示条数
            if (pageSize == 0)
            {
                pageSize = 20;
            }

            int total  = 0;
            PagedList<TEntity> list = GetList(pageId, pageSize);
            total = SetContext(total, list);
            
        }

        protected virtual int SetContext(int total, PagedList<TEntity> list)
        {
            if (list != null)
            {
                Context.Items.Add("list", list);
                total = list.RecordCount;
            }
            Page.DataBind();
            return total;
        }
        /// <summary>
        /// 自动获取当前页面的实体集合，可在子类重载①获取特定的数据
        /// </summary>
        /// <param name="pageId"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        protected virtual PagedList<TEntity> GetList(int pageId, int pageSize)
        {
            return service.GetPagedList(pageId, pageSize);
        }

        /// <summary>
        /// 执行"修改"操作，本方法显示修改页面
        /// </summary>
        protected virtual void DoAdd()
        {
            if (Request.HttpMethod == "POST")
            {
                DoAddSave();
                return;
            }
            if (PreAdd() == true)
            {
                Page.DataBind();
            }
        }
        /// <summary>
        /// 显示修改界面
        /// </summary>
        protected virtual void DoEdit()
        {
            if (Request.HttpMethod == "POST")
            {
                DoEditSave();
                return;
            }
            if (PreEdit() == true)
            {
                Page.DataBind();
            }
        }
        /// <summary>
        /// 执行"修改"的保存操作
        /// </summary>
        protected virtual void DoEditSave()
        {
            //SetRefUrl();

            Guid id = Guid.Empty;
            Guid.TryParse(Request.QueryString["id"], out id);
            if (!id.Equals(Guid.Empty))
            {
                Model = service.GetByID(id);
                if (Model != null)
                {
                    UpdateModel(Model);
                    if (ModelState.IsValid && PreEditSave() == true)
                    {
                        service.Update(Model);
                        AfterEditSave();
                       // Response.Write("<script   language=javascript> window.parent.setselectedtab('提示信息','修改成功');</script>");
                       // Response.Redirect((string)ViewState["RefUrl"]);
                        return;
                    }
                }
            }
            Page.DataBind();
        }

        /// <summary>
        /// 显示删除界面
        /// </summary>
        protected virtual void DoDel()
        {
            if (PreDel() == true)
            {
                Page.DataBind();
            }
        }
        /// <summary>
        /// 执行"删除的保存操作"
        /// </summary>
        protected virtual void DoDelSave()
        {
            if (PreDelSave() == true)
            {
                Guid id = Guid.Empty;
                Guid.TryParse(Request["id"], out id);
                if (!id.Equals(Guid.Empty))
                {
                    TEntity model = service.GetByID(id);
                    if (model != null)
                    {
                        service.Delete(model);
                        AfterDelSave();
                    }
                }
                else
                {
                    if (Request["ids"] != null)
                    {
                        service.Deletes(Request["ids"].Split(','));
                        AfterDelSave();
                    }
                }
            }
            Page.DataBind();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        protected virtual bool PreDel()
        {
            SetRefUrl();

            Guid id = Guid.Empty;
            Guid.TryParse(Request["id"], out id);
            if (id.Equals(Guid.Empty) == false)
            {
                Model = service.GetByID(id);
            }
            else
            {
                if (Request["ids"] != null)
                {
                    Context.Items .Add("list",service.GetByIDs(Request["ids"].Split (',')));
                }
            }
            return true;
        }
        /// <summary>
        /// 准备保存删除的数据
        /// </summary>
        /// <returns></returns>
        protected virtual bool PreDelSave()
        {
            return true;
        }
        /// <summary>
        /// 删除数据后执行其他的逻辑
        /// </summary>
        protected virtual void AfterDelSave()
        {
            RedirectRefOrIndex("删除成功");
        }
        /// <summary>
        /// 准备修改数据
        /// </summary>
        /// <returns></returns>
        protected virtual bool PreEdit()
        {
            SetRefUrl();

            Guid id = Guid.Empty;
            Guid.TryParse(Request.QueryString["id"], out id);
            if (!id.Equals(Guid.Empty))
            {
                Model = service.GetByID(id);
                if (Model != null)
                {
                    return true;
                }
            }           
            return false ;
        }
        /// <summary>
        /// 准备保存修改的数据
        /// </summary>
        /// <returns></returns>
        protected virtual bool PreEditSave()
        {
            return true;
        }

        protected virtual void AfterEditSave()
        {
            RedirectRefOrIndex("修改成功");
        }
        /// <summary>
        /// 执行"添加"的保存操作
        /// </summary>
        protected virtual void DoAddSave()
        {
            if (PreAddSave() == true)
            {
                service.Add(Model);
                AfterAddSave();
            }
            Page.DataBind();
        }
        /// <summary>
        /// 准备添加数据
        /// </summary>
        /// <returns></returns>
        protected virtual bool PreAdd()
        {
            SetRefUrl();
            Model = CreateModel();
            return true;
        }
        /// <summary>
        /// 准备保存更新的数据
        /// </summary>
        /// <returns></returns>
        protected virtual bool PreAddSave()
        {
            Model = CreateModel();
            if (ModelState.IsValid)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// 客户上次请求的路劲
        /// </summary>
        protected void SetRefUrl()
        {
            if (Request.UrlReferrer != null)
            {
                ViewState["RefUrl"] = Request.UrlReferrer.PathAndQuery;
            }
        }
        /// <summary>
        /// 跳转路径
        /// </summary>
        protected string RefUrl
        {
            get
            {
                if (ViewState["RefUrl"] != null)
                {
                    return (string)ViewState["RefUrl"];
                }
                else
                {
                    return "index.aspx";
                }
            }
        }
        /// <summary>
        /// 客户端重定向
        /// </summary>
        protected void RedirectRefOrIndex(string message)
        {
            if (ViewState["RefUrl"] != null)
            {
                ParentView("提示信息", message, (string)ViewState["RefUrl"]);
            }
            else
            {
                ParentView("提示信息", message);
            }
        }

        protected virtual void AfterAddSave()
        {
            RedirectRefOrIndex("新增成功");
        }
    }
}
