
namespace System.Web.Mvc
{
    public class NoCache : FilterAttribute, IActionFilter
    {
        #region IActionFilter 成员

        void IActionFilter.OnActionExecuted(ActionExecutedContext filterContext)
        {

        }

        void IActionFilter.OnActionExecuting(ActionExecutingContext filterContext)
        {
            filterContext.HttpContext.Response.CacheControl = "no-cache";
            filterContext.HttpContext.Response.AddHeader("Pragma", "No-Cache");
        }

        #endregion
    }
}
