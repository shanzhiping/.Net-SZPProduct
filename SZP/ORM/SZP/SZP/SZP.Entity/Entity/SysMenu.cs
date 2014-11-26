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
             [Required(ErrorMessage = "�˵����Ʋ���Ϊ��")]
             public string Title { get; set; }

         }
        /// <summary>
        /// �¼��˵�
        /// </summary>        
        public IList<SysMenu> Children { get; set; }
        /// <summary>
        /// �ϼ��˵�
        /// </summary>
       
        public SysMenu Parent { get; set; }

        public string IsEnableText
        {
            get
            {
                if (_IsEnable)
                {
                    return "��";
                }
                else
                {
                    return "��";
                }
            }
        }
	}
}
