using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

using SZP.Entity;
using SZP.Service;
using System.Text;

namespace SZP.Web.UI
{
    public abstract class PageBase : Page
    {
        protected string QF(string key)
        {
            return Request.Form[key] + "";
        }
        protected string QS(string key)
        {
            return Request.QueryString[key] + "";
        }

        SysUser _sysUser;
        protected SysUser LoginUser
        {
            get { return _sysUser; }
            set { _sysUser = value; }
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            _sysUser = (SysUser)Context.Items["USER"];
        }
        /// <summary>
        /// 弹出消息提升框
        /// </summary>
        /// <param name="message">需要提升的消息</param>
        protected void Alert(string message)
        {
            Alert(message, "");
        }
        /// <summary>
        /// 弹出消息提示框，如果传入的URL不为空，则可进行页面跳转。
        /// </summary>
        /// <param name="message">需要提升的消息</param>
        /// <param name="url">可选参数（需要跳转的页面）</param>
        protected void Alert(string message, string url)
        {
            StringBuilder stringBuilder = new StringBuilder();

            stringBuilder.AppendFormat("alert('{0}');", message);

            if (url.Length > 0)
            {
                stringBuilder.AppendFormat("window.location.href='{0}';", url);
            }
            
            ClientScript.RegisterStartupScript(this.GetType(), "message", stringBuilder.ToString(), true);
        }
        /// <summary>
        /// 刷新当前页面
        /// </summary>
        public void View()
        {
            //location.go(0);
            Response.Write("<script   language=javascript> history.go(0);</script>");
        }
        /// <summary>
        /// 跳转到指定页面
        /// </summary>
        /// <param name="url">URL</param>
        public void View(string url)
        {
            if (string.IsNullOrEmpty(url))
            {
                url = "";
            }
            Response.Write("<script   language=javascript> location.href='" + url + "';</script>");
        }
        /// <summary>
        /// 父级页面跳转跳转到指定页面
        /// </summary>
        /// <param name="url">URL</param>
        public void ParentView(string url)
        {
            if (string.IsNullOrEmpty(url))
            {
                url = "";
            }
            Response.Write("<script   language=javascript> window.parent.location.href='" + url + "';</script>");

        }
        /// <summary>
        /// 关闭window窗口提示并刷新当前打开的tab标签页
        /// </summary>
        /// <param name="title">提示标题</param>
        /// <param name="context">提示内容</param>
        public void ParentView(string title, string context)
        {
            if (string.IsNullOrEmpty(title))
            {
                title = "";
            }
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> window.parent.view('" + title + "','" + context + "');</script>");

        }
        /// <summary>
        /// 操作提示并跳转到制定页面
        /// </summary>
        /// <param name="title">提升标题</param>
        /// <param name="context">提升内容</param>
        /// <param name="url">跳转地址</param>
        public void ParentView(string title, string context, string url)
        {
            if (string.IsNullOrEmpty(title))
            {
                title = "";
            }
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> window.parent.viewTwo('" + title + "','" + context + "','" + url + "');</script>");

        }


        /// <summary>
        /// 关闭window窗口提示并刷新当前打开的tab标签页
        /// </summary>
        /// <param name="title">提示标题</param>
        /// <param name="context">提示内容</param>
        public void ParentTabView(string title, string context)
        {
            if (string.IsNullOrEmpty(title))
            {
                title = "";
            }
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> window.parent.setselectedtab('" + title + "','" + context + "');</script>");
        }



        /// <summary>
        /// 关闭window窗口提示并刷新当前打开的tab标签页
        /// </summary>
        /// <param name="title">提示标题</param>
        /// <param name="context">提示内容</param>
        /// <param name="tab">指定的标签页</param>
        public void ParentTabView(string title, string context, string tab)
        {
            if (string.IsNullOrEmpty(title))
            {
                title = "提示";
            }
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> window.parent.parentab('" + title + "','" + context + "','" + tab + "');</script>");
        }

        //public void Alert(string title, string context)
        //{
        //    Response.Write("<script language=javascript> alert('" + title + "', '" + context + "', 'info');</script>");
        //}

        /// <summary>
        /// 关闭window窗口提示并刷新当前打开的tab标签页
        /// </summary>
        /// <param name="title">提升标题</param>
        /// <param name="context">提升内容</param>
        /// <param name="url">跳转地址</param>
        public void thisView(string title, string context, string url)
        {
            if (string.IsNullOrEmpty(title))
            {
                title = "";
            }
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> ViewTwo('" + title + "','" + context + "','" + url + "'); </script>");

        }
        /// <summary>
        /// 关闭window窗口提示并刷新指定的panel
        /// </summary>
        /// <param name="title">提示标题</param>
        /// <param name="context">提示内容</param>
        /// <param name="panelId">panelId</param>
        /// <param name="url">Panel href</param>
        public void PartialView(string title, string context, string panelId, string url)
        {
            if (string.IsNullOrEmpty(title))
            {
                title = "";
            }
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> window.parent.GetListView('" + title + "','" + context + "','" + panelId + "','" + url + "'); </script>");
        }
        /// <summary>
        /// 弹出提示信息
        /// </summary>
        /// <param name="context">提示内容</param>
        public void Messager(string context)
        {
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> Messager('提示信息','" + context + "'); </script>");
        }
        /// <summary>
        /// 弹出提示信息
        /// </summary>
        /// <param name="title">提示标题</param>
        /// <param name="context">提示内容</param>
        public void Messager(string title, string context)
        {
            if (string.IsNullOrEmpty(title))
            {
                title = "";
            }
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> Messager('" + title + "','" + context + "'); </script>");
        }
        /// <summary>
        /// 弹出提示信息
        /// </summary>
        /// <param name="title">提示标题</param>
        /// <param name="context">提示内容</param>
        public void ParentMessager(string context)
        {
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> window.parent.Messager('提示信息','" + context + "'); </script>");
        }
        /// <summary>
        /// 弹出提示信息
        /// </summary>
        /// <param name="title">提示标题</param>
        /// <param name="context">提示内容</param>
        public void ParentMessager(string title, string context)
        {
            if (string.IsNullOrEmpty(title))
            {
                title = "";
            }
            if (string.IsNullOrEmpty(context))
            {
                context = "";
            }
            Response.Write("<script   language=javascript> window.parent.Messager('" + title + "','" + context + "'); </script>");
        }
    }
}
