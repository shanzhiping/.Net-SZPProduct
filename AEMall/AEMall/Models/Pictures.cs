using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(PicturesMetaData))]
	[DisplayName("Pictures")]
    public partial class Pictures
    {       
	    public Pictures()
		{
			this.Id = Guid.NewGuid();
		}
        public class PicturesMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("简述")]
            [Required(ErrorMessage = "简述不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("文章编号")]
            [Required(ErrorMessage = "文章编号不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object ArticleId { get; set; }

			[DisplayName("缩略图地址")]
            [Required(ErrorMessage = "缩略图地址不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object ThumbnailsUrl { get; set; }

			[DisplayName("图片地址")]
            [Required(ErrorMessage = "图片地址不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Url { get; set; }
        }
    }
}
