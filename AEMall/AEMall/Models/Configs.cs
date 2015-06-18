using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(ConfigsMetaData))]
	[DisplayName("Configs")]
    public partial class Configs
    {       
	    public Configs()
		{
			this.Id = Guid.NewGuid();
		}
        public class ConfigsMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("名称")]
            [Required(ErrorMessage = "名称不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("开关")]
            [Required(ErrorMessage = "开关不得为空")]
            [DataType("Boolean")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object IsValid { get; set; }

			[DisplayName("内容")]
            [Required(ErrorMessage = "内容不得为空")]
            [DataType("Textarea")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Content { get; set; }
        }
    }
}
