using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;

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
    public abstract partial class EntityPage<TEntity>
    {
        #region 属性
        private Type contextType;
        /// <summary>
        /// 当前对象
        /// </summary>
        public Type ContextType
        {
            get { return this.contextType; }
            set { this.contextType = value; }
        }

        private string methodName;
        /// <summary>
        /// 访问的方法
        /// </summary>
        public string MethodName
        {
            get { return this.methodName; }
            set { this.methodName = value; }
        }

        private object[] methodArguments;
        /// <summary>
        /// 方法参数
        /// </summary>
        public object[] MethodArguments
        {
            get { return this.methodArguments; }
            set { this.methodArguments = value; }
        }
        #endregion

        public void GetMethod()
        {
            string pageName = Request.FilePath;
            if (pageName.IndexOf('?') != -1)
            {
                string pageParameter = pageName.Substring(pageName.IndexOf('?'), pageName.Length - pageName.IndexOf('?') + 1);
                string[] parameters = pageParameter.Split('&');
                methodArguments = new object[parameters.Length];
                for (int i = 0; i < parameters.Length; i++)
                {
                    string[] strs=parameters[i].Split('=');
                    if (strs[0] == "Mothod")
                    {
                        methodName = strs[1];
                    }
                    else
                    {
                        methodArguments[i] = strs[1];
                    }
                }
            }

            //if (Context.Request.HttpMethod == "POST")
            //{
            //    methodArguments = new object[Context.Request.Form.Keys.Count];
            //    int i = 0;
            //    foreach (var item in Context.Request.Form.Keys)
            //    {
            //        methodArguments[i] = Context.Request.Form[item.ToString()];
            //        i++;
            //    }
            //}
            if (string.IsNullOrEmpty(methodName))
            {
                methodName = pageName.Substring(pageName.LastIndexOf('/') + 1, pageName.LastIndexOf('.') - pageName.LastIndexOf('/') - 1);
            }
        }

        
        ///// <summary>
        ///// 刷新当前页面
        ///// </summary>
        //public void View()
        //{
        //    //location.go(0);
        //    Response.Write("<script   language=javascript> history.go(0);</script>");
        //}
        ///// <summary>
        ///// 跳转到指定页面
        ///// </summary>
        ///// <param name="url">URL</param>
        //public void View(string url)
        //{
        //    if (string.IsNullOrEmpty(url))
        //    {
        //        url = "";
        //    }
        //    Response.Write("<script   language=javascript> location.href='" + url + "';</script>");
        //}
        ///// <summary>
        ///// 操作提示并刷新父页面
        ///// </summary>
        ///// <param name="title">提示标题</param>
        ///// <param name="context">提示内容</param>
        //public void View(string title, string context)
        //{
        //    if (string.IsNullOrEmpty(title))
        //    {
        //        title = "";
        //    }
        //    if (string.IsNullOrEmpty(context))
        //    {
        //        context = "";
        //    }
        //    Response.Write("<script   language=javascript> window.parent.view('" + title + "','" + context + "');</script>");
           
        //}
        ///// <summary>
        ///// 操作提示并跳转到制定页面
        ///// </summary>
        ///// <param name="title">提升标题</param>
        ///// <param name="context">提升内容</param>
        ///// <param name="url">跳转地址</param>
        //public void View(string title, string context,string url)
        //{
        //    if (string.IsNullOrEmpty(title))
        //    {
        //        title = "";
        //    }
        //    if (string.IsNullOrEmpty(context))
        //    {
        //        context = "";
        //    }
        //    Response.Write("<script   language=javascript> window.parent.viewTwo('" + title + "','" + context + "','" + url + "');</script>");

        //}
        
        ///// <summary>
        ///// 父级页面跳转跳转到指定页面
        ///// </summary>
        ///// <param name="url">URL</param>
        //public void ParentView(string url)
        //{
        //    if (string.IsNullOrEmpty(url))
        //    {
        //        url = "";
        //    }
        //    Response.Write("<script   language=javascript> window.parent.location.href='" + url + "';</script>");
            
        //}
        ///// <summary>
        ///// 调整父级页面并刷新当前打开的tab页
        ///// </summary>
        ///// <param name="title">提示标题</param>
        ///// <param name="context">提示内容</param>
        //public void ParentView(string title, string context)
        //{
        //    if (string.IsNullOrEmpty(title))
        //    {
        //        title = "";
        //    }
        //    if (string.IsNullOrEmpty(context))
        //    {
        //        context = "";
        //    }
        //    Response.Write("<script   language=javascript> window.parent.setselectedtab('" + title + "','" + context + "');</script>");
        //}



        ///// <summary>
        ///// 调整父级页面并刷新指定的的tab页
        ///// </summary>
        ///// <param name="title">提示标题</param>
        ///// <param name="context">提示内容</param>
        ///// <param name="tab">指定的标签页</param>
        //public void ParentView(string title, string context, string tab)
        //{
        //    if (string.IsNullOrEmpty(title))
        //    {
        //        title = "提示";
        //    }
        //    if (string.IsNullOrEmpty(context))
        //    {
        //        context = "";
        //    }
        //    Response.Write("<script   language=javascript> window.parent.parentab('" + title + "','" + context + "','" + tab + "');</script>");
        //}

        ////public void Alert(string title, string context)
        ////{
        ////    Response.Write("<script language=javascript> alert('" + title + "', '" + context + "', 'info');</script>");
        ////}

        ///// <summary>
        ///// 操作提示并跳转到制定页面
        ///// </summary>
        ///// <param name="title">提升标题</param>
        ///// <param name="context">提升内容</param>
        ///// <param name="url">跳转地址</param>
        //public void thisView(string title, string context, string url)
        //{
        //    if (string.IsNullOrEmpty(title))
        //    {
        //        title = "";
        //    }
        //    if (string.IsNullOrEmpty(context))
        //    {
        //        context = "";
        //    }
        //    Response.Write("<script   language=javascript> viewTwo('" + title + "','" + context + "','" + url + "'); </script>");

        //}
        ///// <summary>
        ///// 刷新制定的panel
        ///// </summary>
        ///// <param name="title"></param>
        ///// <param name="context"></param>
        ///// <param name="panelId"></param>
        ///// <param name="url"></param>
        //public void partialView(string title,string context,string panelId,string url)
        //{
        //    if (string.IsNullOrEmpty(title))
        //    {
        //        title = "";
        //    }
        //    if (string.IsNullOrEmpty(context))
        //    {
        //        context = "";
        //    }
        //    Response.Write("<script   language=javascript> window.parent.GetListView('" + title + "','" + context + "','" + panelId + "','" + url + "'); </script>");
        //}
        ///// <summary>
        ///// 弹出提示信息
        ///// </summary>
        ///// <param name="title"></param>
        ///// <param name="context"></param>
        //public void Messager(string context)
        //{
        //    if (string.IsNullOrEmpty(context))
        //    {
        //        context = "";
        //    }
        //    Response.Write("<script   language=javascript> window.parent.Messager('提示信息','" + context + "'); </script>");
        //}
        ///// <summary>
        ///// 弹出提示信息
        ///// </summary>
        ///// <param name="title"></param>
        ///// <param name="context"></param>
        //public void Messager(string title, string context)
        //{
        //    if (string.IsNullOrEmpty(title))
        //    {
        //        title = "";
        //    }
        //    if (string.IsNullOrEmpty(context))
        //    {
        //        context = "";
        //    }
        //    Response.Write("<script   language=javascript> window.parent.Messager('" + title + "','" + context + "'); </script>");
        //}



        //protected virtual void GetVerification(string assembly)
        //{

        //    string strText = "$.extend($.fn.validatebox.defaults.rules, {";
        //    object[] objs = System.Type.GetType(assembly + ",SZP.Entity").GetCustomAttributes(typeof(MetadataTypeAttribute), false);
        //    //object[] objs = System.Type.GetType(assembly + ",SZP.Entity").GetCustomAttributes;
        //    foreach (object item in objs)
        //    {
        //        if (item is MetadataTypeAttribute)
        //        {
        //            MetadataTypeAttribute metadata = item as MetadataTypeAttribute;
        //            if (metadata != null)
        //            {
        //                //获取实体类中的所有的公共对象
        //                Type metadataClass = metadata.MetadataClassType;
        //                PropertyInfo[] properties = metadataClass.GetProperties();
        //                if (properties == null)
        //                {
        //                    continue;
        //                }
        //                foreach (PropertyInfo property in properties)
        //                {
        //                    RegularExpressionAttribute[] attrs = (RegularExpressionAttribute[])property.GetCustomAttributes(typeof(RegularExpressionAttribute), false);
        //                    if(attrs!=null){
        //                        strText += RegularExpressionAttribute(property.Name, attrs[0]);
        //                    }
        //                }
                       
        //                //object[] attrs = propertie.GetCustomAttributes(false) as object[];
        //                //foreach (object attr in attrs)
        //                //{
        //                //    strText = strText + Attribute(attr);
        //                //}
        //            }
        //        }
        //    }
        //    strText = strText.Trim(',');
        //    strText = strText + "});";
        //    //判断 myName 是否已被注册;
        //    if (!ClientScript.IsClientScriptBlockRegistered(this.GetType(), "valid"))
        //    {
        //        //动态注册 JavaScript
        //        ClientScript.RegisterClientScriptBlock(this.GetType(), "valid", strText, true);
        //    }    
          
        //}
        ///// <summary>
        ///// 正则表达式验证
        ///// </summary>
        ///// <param name="regular">RegularExpressionAttribute 对象</param>
        ///// <returns></returns>
        //protected virtual string RegularExpressionAttribute(string field,RegularExpressionAttribute regular)
        //{
        //    string strText =  "   valid" + field + ": {";
        //    strText = strText + "     validator: function (value, param) {";
        //    strText = strText + string.Format("     return /{0}/.test(value);", regular.Pattern);
        //    strText = strText + "},";
        //    strText = strText + string.Format("       message: '{0}'", regular.ErrorMessage);
        //    strText = strText + "},";
           
      

        //    return strText;
        //}
    }
}
