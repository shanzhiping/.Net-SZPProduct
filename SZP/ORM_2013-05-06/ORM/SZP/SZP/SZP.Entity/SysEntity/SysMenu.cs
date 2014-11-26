using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace SZP.Entity
{
	public partial class SysMenu
	{
        /// <summary>
        /// 下级菜单
        /// </summary>        
        public IList<SysMenu> Children { get; set; }
        /// <summary>
        /// 上级菜单
        /// </summary>
       
        public SysMenu Parent { get; set; }

        public string IsEnableText
        {
            get
            {
                if (_IsEnable)
                {
                    return "是";
                }
                else
                {
                    return "否";
                }
            }
        }
	}
}
