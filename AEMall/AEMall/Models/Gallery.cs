using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(GalleryMetaData))]
	[DisplayName("Gallery")]
    public partial class Gallery
    {       
	    public Gallery()
		{
			this.Id = Guid.NewGuid();
		}
        public class GalleryMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("简述")]
            [Required(ErrorMessage = "简述不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("商品")]
            [Required(ErrorMessage = "商品不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object ProductId { get; set; }

			[DisplayName("缩略图地址")]
            [Required(ErrorMessage = "缩略图地址不得为空")]
            [DataType("ImageUrl")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object ThumbnailsUrl { get; set; }

			[DisplayName("图片地址")]
            [DataType("ImageUrl")]
            [Required(ErrorMessage = "图片地址不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Url { get; set; }
        }
    }
}
