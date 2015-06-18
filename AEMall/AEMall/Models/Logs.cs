using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(LogsMetaData))]
	[DisplayName("Logs")]
    public partial class Logs
    {       
	    public Logs()
		{
			this.Id = Guid.NewGuid();
		}
        public class LogsMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("简介")]
            [Required(ErrorMessage = "简介不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("内容")]
            [Required(ErrorMessage = "内容不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Content { get; set; }

			[DisplayName("创建时间")]
            [Required(ErrorMessage = "创建时间不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object CreateTime { get; set; }

			[DisplayName("来源IP")]
            [Required(ErrorMessage = "来源IP不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object IP { get; set; }

			[DisplayName("涉及用户")]
            [Required(ErrorMessage = "涉及用户不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object UserId { get; set; }
        }
    }
}
