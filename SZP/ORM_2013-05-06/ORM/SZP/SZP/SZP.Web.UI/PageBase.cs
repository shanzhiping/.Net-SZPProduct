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
    }
}
