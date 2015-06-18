using System.Text;
using System.Web.Routing;

namespace System.Web.Mvc
{
    public static class MikePagerAjaxExtensions
    {
        #region MikePager 分页控件

        public static string MikePager<T>(this AjaxHelper html, PagedList<T> data)
        {

            int start = (data.PageIndex - 5) >= 1 ? (data.PageIndex - 5) : 1;
            int end = (data.TotalPage - start) > 10 ? start + 10 : data.TotalPage;

            RouteValueDictionary vs = html.ViewContext.RouteData.Values;

            var queryString = html.ViewContext.HttpContext.Request.QueryString;
            foreach (string key in queryString.Keys)
                vs[key] = queryString[key];

            var FormString = html.ViewContext.HttpContext.Request.Form;
            foreach (string key in FormString.Keys)
                vs[key] = FormString[key];

            vs.Remove("X-Requested-With");
            vs.Remove("X-HTTP-Method-Override");

            var builder = new StringBuilder();
            builder.AppendFormat("<div class=\"mike_mvc_pager\">");

            //vs["pageSize"] = data.PageSize;
            if (data.IsPreviousPage)
            {
                vs["pageIndex"] = 1;

                builder.Append(Ajax.AjaxExtensions.ActionLink(html, "首页", vs["action"].ToString(), vs, new Ajax.AjaxOptions() {  UpdateTargetId = "Main" }));

                vs["pageIndex"] = data.PageIndex - 1;

                builder.Append(Ajax.AjaxExtensions.ActionLink(html, "上一页", vs["action"].ToString(), vs, new Ajax.AjaxOptions() {  UpdateTargetId = "Main" }));

            }

            for (int i = start; i <= end; i++) //前后各显示5个数字页码
            {
                vs["pageIndex"] = i;

                if (i == data.PageIndex)
                {
                    builder.Append("<font class='thispagethis ui-state-default'>" + i.ToString() + "</font>");
                }
                else
                {
                    builder.Append(Ajax.AjaxExtensions.ActionLink(html, i.ToString(), vs["action"].ToString(), vs, new Ajax.AjaxOptions() {  UpdateTargetId = "Main" }));
                }
            }

            if (data.IsNextPage)
            {
                vs["pageIndex"] = data.PageIndex + 1;

                builder.Append(Ajax.AjaxExtensions.ActionLink(html, "下一页", vs["action"].ToString(), vs, new Ajax.AjaxOptions() {  UpdateTargetId = "Main" }));

                vs["pageIndex"] = data.TotalPage;

                builder.Append(Ajax.AjaxExtensions.ActionLink(html, "末页", vs["action"].ToString(), vs, new Ajax.AjaxOptions() {  UpdateTargetId = "Main" }));

            }
            builder.Append("<select id=\"pager_me\" name=\"pager_me\" onchange=\"jump2page(this);\">");
            for (int i = 0; i < data.TotalPage; i++)
            {
                builder.Append("<option value=\"/Pub/" + vs["controller"].ToString() + "?Keyword=" + (vs["Keyword"] != null ? vs["Keyword"].ToString().Trim() : "") + "&pageIndex=" + (i + 1) + "\"" + ((i + 1 == data.PageIndex) ? "selected" : "") + ">第" + (i + 1) + "页/共" + data.TotalPage + "页</option>");
            }
            builder.Append("</select>");
            builder.Append("</div>");

            builder.Append("<script src=\"/Scripts/jquery.dataTables.Create.js\" type=\"text/javascript\"></script>");
            return builder.ToString();
        }
        #endregion

    }
}
