using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(PaymentModesMetaData))]
	[DisplayName("PaymentModes")]
    public partial class PaymentModes
    {       
	    public PaymentModes()
		{
			this.Id = Guid.NewGuid();
		}
        public class PaymentModesMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("名称")]
            [Required(ErrorMessage = "名称不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("商家代码")]
            [Required(ErrorMessage = "商家代码不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object MerchantCode { get; set; }

			[DisplayName("电子邮箱")]
            [Required(ErrorMessage = "电子邮箱不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Email { get; set; }

			[DisplayName("首选蜜月")]
            [Required(ErrorMessage = "首选蜜月不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object SecretKey { get; set; }

			[DisplayName("备选密钥")]
            [Required(ErrorMessage = "备选密钥不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object SecondKey { get; set; }

			[DisplayName("密码")]
            [Required(ErrorMessage = "密码不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Password { get; set; }

			[DisplayName("伙伴")]
            [Required(ErrorMessage = "伙伴不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Partner { get; set; }

			[DisplayName("网关")]
            [Required(ErrorMessage = "网关不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Gateway { get; set; }

			[DisplayName("序号")]
            [Required(ErrorMessage = "序号不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Sequence { get; set; }

			[DisplayName("限额")]
            [Required(ErrorMessage = "限额不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Charge { get; set; }

			[DisplayName("百分比？")]
            [Required(ErrorMessage = "百分比？不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object IsPercent { get; set; }

			[DisplayName("描述")]
            [Required(ErrorMessage = "描述不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Description { get; set; }
        }
    }
}
