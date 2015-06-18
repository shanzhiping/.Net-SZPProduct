using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(ProductsInTypesMetaData))]
	[DisplayName("ProductsInTypes")]
    public partial class ProductsInTypes
    {       
	    public ProductsInTypes()
		{
			this.Id = Guid.NewGuid();
		}
        public class ProductsInTypesMetaData
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

			[DisplayName("类型")]
            [Required(ErrorMessage = "类型不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object TypeId { get; set; }
        }
    }
}
