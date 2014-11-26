using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace SZP.Entity
{
    [MetadataType(typeof(SysOrganizationalData))]
	public partial class SysOrganizational
	{
        class SysOrganizationalData
        {
            
            [Required(ErrorMessage = "��ϵ�˲���Ϊ��")]
            public string Name { get; set; }
        }
	}
}
