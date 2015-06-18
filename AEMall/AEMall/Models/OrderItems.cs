using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(OrderItemsMetaData))]
	[DisplayName("OrderItems")]
    public partial class OrderItems
    {       
	    public OrderItems()
		{
			this.Id = Guid.NewGuid();
		}
        public class OrderItemsMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("简述")]
            [Required(ErrorMessage = "简述不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("所属订单")]
            [Required(ErrorMessage = "所属订单不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object OrderId { get; set; }

			[DisplayName("商品")]
            [Required(ErrorMessage = "商品不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object ProductId { get; set; }

			[DisplayName("数量")]
            [Required(ErrorMessage = "数量不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Quantity { get; set; }

			[DisplayName("缩略图")]
            [Required(ErrorMessage = "缩略图不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object ThumbUrl { get; set; }

			[DisplayName("备注")]
            [Required(ErrorMessage = "备注不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Remark { get; set; }
        }
    }
}
