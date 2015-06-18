using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(ProductTypesMetaData))]
    [DisplayName("ProductTypes")]
    public partial class ProductTypes
    {
        public ProductTypes()
        {
            this.Id = Guid.NewGuid();
        }
        public class ProductTypesMetaData
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

            [DisplayName("父类")]
            [DataType("DropDownList")]
            [DisplayFormat(ConvertEmptyStringToNull = true)]
            public object ParentId { get; set; }

            [DisplayName("描述")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            [DataType("Textarea")]
            public object Description { get; set; }
        }
    }
}
