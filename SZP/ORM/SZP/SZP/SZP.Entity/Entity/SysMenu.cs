using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace SZP.Entity
{
     [MetadataType(typeof(SysMenuData))]
	public partial class SysMenu
	{
         class SysMenuData
         {
             [Required(ErrorMessage = "菜单名称不能为空")]
             public string Title { get; set; }

         }
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
