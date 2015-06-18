using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(OrdersMetaData))]
	[DisplayName("Orders")]
    public partial class Orders
    {       
	    public Orders()
		{
			this.Id = Guid.NewGuid();
		}
        public class OrdersMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("订单流水号")]
            [Required(ErrorMessage = "订单流水号不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("顾客编号")]
            [Required(ErrorMessage = "顾客编号不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object UserId { get; set; }

			[DisplayName("顾客姓名")]
            [Required(ErrorMessage = "顾客姓名不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object RealName { get; set; }

			[DisplayName("创建时间")]
            [Required(ErrorMessage = "创建时间不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object CreateTime { get; set; }

			[DisplayName("运送地区")]
            [Required(ErrorMessage = "运送地区不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object ShippingRegion { get; set; }

			[DisplayName("运送地址")]
            [Required(ErrorMessage = "运送地址不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Address { get; set; }

			[DisplayName("邮编")]
            [Required(ErrorMessage = "邮编不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object PostCode { get; set; }

			[DisplayName("收货人手机")]
            [Required(ErrorMessage = "收货人手机不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Mobil { get; set; }

			[DisplayName("收货人固定电话")]
            [Required(ErrorMessage = "收货人固定电话不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Tel { get; set; }

			[DisplayName("支付方式")]
            [Required(ErrorMessage = "支付方式不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object PaymentModeId { get; set; }

			[DisplayName("支付网关")]
            [Required(ErrorMessage = "支付网关不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object PaymentGateway { get; set; }

			[DisplayName("费用结清")]
            [Required(ErrorMessage = "费用结清不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object IsPaid { get; set; }

			[DisplayName("运费")]
            [Required(ErrorMessage = "运费不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Freight { get; set; }

			[DisplayName("净重")]
            [Required(ErrorMessage = "净重不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Weight { get; set; }

			[DisplayName("商品总价")]
            [Required(ErrorMessage = "商品总价不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object CostPrice { get; set; }

			[DisplayName("货运单号")]
            [Required(ErrorMessage = "货运单号不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object ShipOrderNumber { get; set; }

			[DisplayName("货到付款")]
            [Required(ErrorMessage = "货到付款不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object IsPOD { get; set; }

			[DisplayName("商品数量")]
            [Required(ErrorMessage = "商品数量不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Total { get; set; }

			[DisplayName("是否激活")]
            [Required(ErrorMessage = "是否激活不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object IsActive { get; set; }

			[DisplayName("备注")]
            [Required(ErrorMessage = "备注不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Remark { get; set; }
        }
    }
}
