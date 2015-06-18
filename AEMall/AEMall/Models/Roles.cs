using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(RolesMetaData))]
	[DisplayName("Roles")]
    public partial class Roles
    {       
	    public Roles()
		{
			this.Id = Guid.NewGuid();
		}
        public class RolesMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("名称")]
            [Required(ErrorMessage = "名称不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("序号")]
            [Required(ErrorMessage = "序号不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Sequence { get; set; }
        }
    }
}
