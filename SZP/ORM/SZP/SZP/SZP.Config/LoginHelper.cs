using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using SZP.Entity;
using SZP.Service;

namespace SZP.Config
{
    public enum LogonResult
    {
        /// <summary>
        /// 验证成功
        /// </summary>
        Succeeded = 0,
        /// <summary>
        /// 验证失败
        /// </summary>
        failure=1,
        ///// <summary>
        ///// 无效的组织机构或公司代码
        ///// </summary>
        //InvalidOrganization = 1,
        ///// <summary>
        ///// 无效的用户名
        ///// </summary>
        //InvalidLoginName = 2,
        ///// <summary>
        ///// 密码错误
        ///// </summary>
        //PasswordIncorrect = 3,
        ///// <summary>
        ///// 当前用户对该组织机构或公司没有权限
        ///// </summary>
        //PermissionDenied = 4,
    }

    public class LoginHelper
    {
        public static SysUser CurrentUser
        {
            get {

                if (!HttpContext.Current.Request.IsAuthenticated)
                {
                    HttpContext.Current.Response.Redirect(Helper.GetRootURL() + "/Home/LoginOn.aspx");
                }
                else
                {
                    if (GetCookies().ID .Equals (Guid.Empty))
                    {
                        HttpContext.Current.Response.Redirect(Helper.GetRootURL() + "/Home/LoginOn.aspx");
                    }
                }
                return GetCookies();
            }
            set { SetCookies(value); }
        }

        /// <summary>
        /// 读取cookiex信息
        /// </summary>
        /// <returns></returns>
        public static SysUser GetCookies()
        {
            var user = new SysUser();
            if (!string.IsNullOrEmpty(HttpContext.Current.User.Identity.Name))
            {
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(
                    HttpContext .Current .Request .Cookies[AssemblyConfig .LOGINUSER_COOKIE_NAME].Value);
                string[] userData = ticket.UserData.Split('|');
                user.ID = new Guid(userData[0]);
                user.Name = userData[1];
                user.Account = userData[2];
                user.OrganizationId = new Guid(userData[3]);
                user.IsAdministrator = bool.Parse(userData[4]);
                user.Language = (Common.SysEnums.AllLandguage)Convert.ToInt32(userData[5]);

            }
            return user;
        }
        /// <summary>
        /// 写入Cookie
        /// </summary>
        /// <param name="user"></param>
        public static void SetCookies(SysUser user)
        {
            bool isPersistent = true;
            var userData = new StringBuilder();
            userData.Append(user.ID);
            userData.Append("|").Append(user.Name);
            userData.Append("|").Append(user.Account);
            userData.Append("|").Append(user.OrganizationId);
            userData.Append("|").Append(user.IsAdministrator);
            userData.AppendFormat("|{0:d}", user.Language);
            var ticket = new FormsAuthenticationTicket(0, user.ID.ToString(), DateTime.Now, DateTime.Now.AddMinutes(200), isPersistent, userData.ToString(), FormsAuthentication.FormsCookiePath);
            string encTicket = FormsAuthentication.Encrypt(ticket);
            HttpContext.Current.Response.Cookies.Add(new HttpCookie(AssemblyConfig.LOGINUSER_COOKIE_NAME, encTicket));
            HttpContext.Current.Response.Cookies.Add(new HttpCookie(AssemblyConfig.LANGUAGE_COOKIE_NAME, ((int)user.Language).ToString()));
        }
        /// <summary>
        /// 注销
        /// </summary>
        public static void Logout()
        {
            FormsAuthentication.SignOut();
        }
        /// <summary>
        /// 设置Cookie
        /// </summary>
        /// <param name="user"></param>
        /// <param name="userName"></param>
        public static void AddCookie(SysUser user, string userName)
        {
            FormsAuthentication.SetAuthCookie(userName, false);
            SetCookies(user);
        }
        /// <summary>
        /// Backs to URL.
        /// 跳转的URL
        /// </summary>
        /// <param name="userName">Name of the user.</param>
        public static void BackToUrl(string userName)
        {

            FormsAuthentication.RedirectFromLoginPage(userName, false);
        }
        /// <summary>
        /// 执行用户验证
        /// </summary>
        /// <param name="organizationNumber"></param>
        /// <param name="loginName"></param>
        /// <param name="password"></param>
        /// <param name="language"></param>
        /// <returns></returns>
        public static LogonResult Logon(Guid organizationId, string loginName, string password, Common.SysEnums.AllLandguage language)
        {

            SZP.Service.ISysUserService iService = new SysUserService();
            SZP.Entity.SysUser user = iService.GetUserLogin(organizationId, loginName, password, HttpContext.Current.Request.UserHostAddress);
            if (user == null)
            {
                return LogonResult.failure;
            }
            Config.SysUser cUser = new SysUser();
            cUser.ID = user.Id;
            cUser.Name = user.Name;
            cUser.Account = user.Account;
            cUser.OrganizationId = organizationId;
            cUser.IsAdministrator = user.IsSystem;
            cUser.Language = language;


            CurrentUser = cUser;

           // //AddUserLog(user);

            //// 通过验证
            return LogonResult.Succeeded;
        }
    }
}
