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
            
            [Required(ErrorMessage = "联系人不能为空")]
            public string Name { get; set; }
        }
	}
}
