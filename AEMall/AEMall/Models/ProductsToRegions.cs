using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(ProductsToRegionsMetaData))]
	[DisplayName("ProductsToRegions")]
    public partial class ProductsToRegions
    {       
	    public ProductsToRegions()
		{
			this.Id = Guid.NewGuid();
		}
        public class ProductsToRegionsMetaData
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

			[DisplayName("区域")]
            [Required(ErrorMessage = "区域不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object RegionId { get; set; }
        }
    }
}
