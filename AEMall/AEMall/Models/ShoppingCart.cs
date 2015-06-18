using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(ShoppingCartMetaData))]
	[DisplayName("ShoppingCart")]
    public partial class ShoppingCart
    {       
	    public ShoppingCart()
		{
			this.Id = Guid.NewGuid();
		}
        public class ShoppingCartMetaData
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

			[DisplayName("数量")]
            [Required(ErrorMessage = "数量不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Quantity { get; set; }

			[DisplayName("创建时间")]
            [Required(ErrorMessage = "创建时间不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object CreateTime { get; set; }

			[DisplayName("顾客")]
            [Required(ErrorMessage = "顾客不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object UserId { get; set; }

			[DisplayName("备注")]
            [Required(ErrorMessage = "备注不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Remark { get; set; }
        }
    }
}
