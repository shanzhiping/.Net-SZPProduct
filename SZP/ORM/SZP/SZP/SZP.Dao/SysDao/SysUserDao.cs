using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using  SZP.Entity;


namespace SZP.Dao
{
	public partial class SysUserDao
	{
        public SysUser GetUserLogin(string loginName)
        {            
            if (string.IsNullOrEmpty(loginName))
            {
                return null;
            }            
            return base.GetSingle(" where IsDeleted=0 and Status=1 and Account=@Account", loginName);
        }
	}
	public partial interface ISysUserDao
	{        
        /// <summary>
        /// 根据帐号查询用户
        /// </summary>
        /// <param name="loginName"></param>
        /// <returns></returns>
        SysUser GetUserLogin(string loginName);
	}
}
