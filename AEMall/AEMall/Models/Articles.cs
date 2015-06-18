using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;
//_来_自_5_1_a_s_p_x
namespace Models
{
    [MetadataType(typeof(ArticlesMetaData))]
	[DisplayName("Articles")]
    public partial class Articles
    {       
	    public Articles()
		{
			this.Id = Guid.NewGuid();
            this.CreateTime = DateTime.Now;
            this.VoidTime = DateTime.Now.AddMonths(1); 
		}
        public class ArticlesMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("标题")]
            [Required(ErrorMessage = "标题不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("内容")]
            [Required(ErrorMessage = "内容不得为空")]
            [DataType(DataType.MultilineText)]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Content { get; set; }

			[DisplayName("创建时间")]
            [Required(ErrorMessage = "创建时间不得为空")]
            [DataType("DateTime")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object CreateTime { get; set; }

            [DisplayName("失效时间")]
            [Required(ErrorMessage = "失效时间不得为空")]
            [DataType("DateTime")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object VoidTime { get; set; }

            [DisplayName("图片地址")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Url { get; set; }

			[DisplayName("所属分类")]
            [Required(ErrorMessage = "所属分类不得为空")]
            [DataType("DropDownList")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object GenreId { get; set; }

			[DisplayName("作者")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object UserId { get; set; }
        }
    }
}
