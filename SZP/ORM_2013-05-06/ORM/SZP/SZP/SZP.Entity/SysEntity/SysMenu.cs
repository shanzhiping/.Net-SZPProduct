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
