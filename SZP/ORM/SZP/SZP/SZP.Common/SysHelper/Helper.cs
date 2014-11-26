using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace SZP.Config
{
    public class Helper
    {
        /// <summary>
        /// 获取网站的根目录
        /// </summary>
        /// <returns></returns>
        public static string GetRootURL()
        {
            string AppPath = "";
            HttpContext HttpCurrent = HttpContext.Current;
            HttpRequest Req;
            if (HttpCurrent != null)
            {
                Req = HttpCurrent.Request;

                string UrlAuthority = Req.Url.GetLeftPart(UriPartial.Authority);
                if (Req.ApplicationPath == null || Req.ApplicationPath == "/")
                    //直接安装在Web站点   
                    AppPath = UrlAuthority;
                else
                    //安装在虚拟子目录下   
                    AppPath = UrlAuthority + Req.ApplicationPath;
            }
            return AppPath;

        }
    }
}
