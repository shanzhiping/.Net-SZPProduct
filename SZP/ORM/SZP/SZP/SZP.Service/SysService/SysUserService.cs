using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using  SZP.Entity;


namespace SZP.Service
{
	public partial class SysUserService
	{
        public SysUser GetUserLogin(Guid organizationId,string loginName,string password,string ip)
        {
            SysUser user = Idao.GetUserLogin(loginName);
            if (user !=null)
            {
                if (user.Password == password)
                {
                    if (user.IsSystem == false)
                    {
                        if (user.Organizationals.IndexOf(organizationId.ToString()) >= 0)
                        {
                            user.LoginAt = DateTime.Now;
                            user.LoginIp = ip;
                            OrganizationalId = organizationId;
                            Update(user);                          
                            AddLog(Core.LogOperation.LogOn, user);
                            return user;
                        }
                    }
                    else
                    {
                        user.LoginAt = DateTime.Now;
                        user.LoginIp = ip;
                        OrganizationalId = organizationId ;
                        Update(user);
                        AddLog(Core.LogOperation.LogOn, user);
                        return user;                        
                    }
                }
            }
            return null;
        }

        public SysUser GetUserEntityByLoginName(string loginName)
        {
            return Idao.GetUserLogin(loginName);
        }
	}
	public partial interface ISysUserService
	{
        SysUser GetUserLogin(Guid organizationId, string loginName, string password, string ip);
        SysUser GetUserEntityByLoginName(string loginName);
	}
}
