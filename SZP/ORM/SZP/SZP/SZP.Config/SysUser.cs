using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Config
{
    public class SysUser
    {
        /// <summary>
        /// 用户ID
        /// </summary>
        public Guid ID { get; set; }
        /// <summary>
        /// 用户姓名
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 登入帐号
        /// </summary>
        public string Account { get; set; }
        /// <summary>
        /// 当前用户所属的组织机构 ID
        /// </summary>
        public Guid OrganizationId { get; set; }
        /// <summary>
        /// 是否为管理员。
        /// </summary>
        public bool IsAdministrator { get; set; }
        /// <summary>
        /// 所选语言
        /// </summary>
        public SZP.Common.SysEnums.AllLandguage Language { get; set; }
    }
}
