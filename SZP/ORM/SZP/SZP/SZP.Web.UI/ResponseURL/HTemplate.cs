using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace SZP.Web.UI
{
    public class HTemplate
    {
        #region 属性
        private static string title;
        /// <summary>
        /// Title
        /// </summary>
        public static string Title
        {
            get
            {
                if (string.IsNullOrEmpty(title))
                {
                    return "new page";
                }
                else
                {
                    return title;
                }
            }
            set { title = value; }
        }

        #endregion

        #region  方法
        /// <summary>
        /// 加载Template
        /// </summary>
        /// <param name="url">模板路径</param>
        /// <param name="title">模板内容参数  采用  变量=值  如 @Title=SZP企业管理系统</param>
        /// <returns></returns>
        public static string Template(string url,params string[] title)
        {
            StreamReader sr = new StreamReader(System.Web.HttpContext.Current.Server.MapPath(url), System.Text.Encoding.Default);
            string str = sr.ReadToEnd();
            //string[] paramses = title.Split(',');
            foreach (string item in title)
            {
                string[] pars = item.Split('=');
                if (pars.Length == 2)
                {
                    str = str.Replace(pars[0], pars[1]);
                }
            }            
            return str;
        }
        /// <summary>
        /// 加载Template
        /// </summary>
        /// <param name="url">模板路径</param>
        /// <returns></returns>
        public static string Template(string url)
        {
            StreamReader sr = new StreamReader(System.Web.HttpContext.Current.Server.MapPath(url), System.Text.Encoding.Default);
            string str = sr.ReadToEnd();
            return str;
        }
        #endregion
    }
}
