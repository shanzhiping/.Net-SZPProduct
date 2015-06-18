using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(ShippingAddressMetaData))]
	[DisplayName("ShippingAddress")]
    public partial class ShippingAddress
    {       
	    public ShippingAddress()
		{
			this.Id = Guid.NewGuid();
		}
        public class ShippingAddressMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("收货人姓名")]
            [Required(ErrorMessage = "收货人姓名不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("收货人手机")]
            [Required(ErrorMessage = "收货人手机不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Mobil { get; set; }

			[DisplayName("收货人电话")]
            [Required(ErrorMessage = "收货人电话不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Tel { get; set; }

			[DisplayName("详细地址")]
            [Required(ErrorMessage = "详细地址不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Address { get; set; }

			[DisplayName("邮编")]
            [Required(ErrorMessage = "邮编不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object PostCode { get; set; }

			[DisplayName("用户")]
            [Required(ErrorMessage = "用户不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object UserId { get; set; }

			[DisplayName("默认")]
            [Required(ErrorMessage = "默认不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object IsDefault { get; set; }
        }
    }
}
