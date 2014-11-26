using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Web.UI
{
    public class PageList
    {
        public static string GetPageIndex(int pageCount, int pageIndex, string pageURL, string pParamQueStr)
        {
            StringBuilder strbu = new StringBuilder();
            strbu.Append("<div id=\"pager1\"><span class='summary'>共" + pageCount.ToString() + "页</span><span class='pages'><a  class='first' " + (pageIndex == 1 ? "" : " href=\"" + pageURL + "?page=1" + pParamQueStr + " \" ") + ">|<</a>\r\n<a class='pre' " + (pageIndex == 1 ? "" : " href=\"" + pageURL + "?page=" + (pageIndex - 1).ToString() + pParamQueStr + " \" ") + "> 前一页</a>\r\n");
            int y = 1;
            if (pageIndex <= 2 && pageCount > 2)
            {
                for (int i = (pageIndex - 2) > 0 ? (pageIndex - 2) : 1; i <= (5 <= pageCount ? 5 : pageCount); i++)
                {
                    y = i;

                    if (i == pageIndex)
                        strbu.Append("<font color='red'><strong class='current'>" + pageIndex + "</strong></font>\r\n");
                    else
                        strbu.Append("<a href=\"" + pageURL + "?page=" + i + pParamQueStr + "\" title='" + i + "' class='page'>" + i + "</a>\r\n");
                }
            }
            else
            {
                if (pageIndex > 3)
                {
                    strbu.Append("<a href=\"" + pageURL + "?page=" + (pageIndex - 3) + pParamQueStr + "\" title='转到第" + (pageIndex - 3) + "页'>...</a>\r\n");
                }
                for (int i = (pageIndex - 2) > 0 ? (pageIndex - 2) : 1; i <= ((pageIndex + 2) <= pageCount ? (pageIndex + 2) : pageCount); i++)
                {
                    y = i;

                    if (i == pageIndex)
                        strbu.Append("<font color='red'><strong class='current'>" + pageIndex + "</strong></font>\r\n");
                    else
                        strbu.Append("<a href=\"" + pageURL + "?page=" + i + pParamQueStr + "\" title='" + i + "' class='page'>" + i + "</a>\r\n");
                }
            }
            if ((pageIndex + 2) < pageCount)
            {
                strbu.Append("<a href=\"" + pageURL + "?page=" + (y + 1) + pParamQueStr + "\" title='转到第" + (y + 1) + "页'>...</a>\r\n");
            }
            strbu.Append("<a " + (pageIndex == pageCount ? "" : " href=\"" + pageURL + "?page=" + (pageIndex + 1).ToString() + pParamQueStr + "\" ") + " title='转到第" + ((pageIndex) != pageCount ? pageIndex + 1 : pageCount).ToString() + "页' class='next'>后一页</a> \r\n");
            strbu.Append("<a" + (pageIndex == pageCount ? "" : " href=\"" + pageURL + "?page=" + pageCount + pParamQueStr + "\"") + " title='转到第" + pageCount + "页' class='last'>>|</a>\r\n");
            strbu.Append("<span><input type='text' value='1' id='_pagerid0' style='width:25px' /><input type='button' value='Go' class='btn' onclick=\"javascript:GoToPage('" + pageURL + "?page=_pid" + pParamQueStr + "', document.getElementById('_pagerid0').value);\" /></span></span></div>");
            strbu.Append("<script language='javascript'>function GoToPage(url,pid){if(pid > 0 && pid <= " + pageCount + ")document.location.replace(url.replace('_pid', pid).replace('_1.','.'));}</script>");

            return strbu.ToString();
        }
    }
}
