using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(GenresMetaData))]
	[DisplayName("Genres")]
    public partial class Genres
    {       
	    public Genres()
		{
			this.Id = Guid.NewGuid();
		}
        public class GenresMetaData
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

			[DisplayName("父分类")]
            [DataType("DropDownList")]
            [DisplayFormat(ConvertEmptyStringToNull = true)]
            public object ParentId { get; set; }
        }
    }
}
