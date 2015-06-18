using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(StatisticsMetaData))]
	[DisplayName("Statistics")]
    public partial class Statistics
    {       
	    public Statistics()
		{
			this.Id = Guid.NewGuid();
		}
        public class StatisticsMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("简述")]
            [Required(ErrorMessage = "简述不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("创建时期")]
            [Required(ErrorMessage = "创建时期不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object CreateTime { get; set; }

			[DisplayName("用户数")]
            [Required(ErrorMessage = "用户数不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object TotalUsers { get; set; }

			[DisplayName("顾客数")]
            [Required(ErrorMessage = "顾客数不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object TotalCustomers { get; set; }

			[DisplayName("商品数")]
            [Required(ErrorMessage = "商品数不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object TotalProducts { get; set; }

			[DisplayName("订单数")]
            [Required(ErrorMessage = "订单数不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object TotalOrders { get; set; }

			[DisplayName("近24小时注册人数")]
            [Required(ErrorMessage = "近24小时注册人数不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object NewUserInPast24Hrs { get; set; }

			[DisplayName("最新注册顾客")]
            [Required(ErrorMessage = "最新注册顾客不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object NewestUserId { get; set; }
        }
    }
}
