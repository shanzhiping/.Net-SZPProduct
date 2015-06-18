using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(UserProfileMetaData))]
	[DisplayName("UserProfile")]
    public partial class UserProfile
    {       
	    public UserProfile()
		{
			this.Id = Guid.NewGuid();
		}
        public class UserProfileMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("名称")]
            [Required(ErrorMessage = "名称不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("用户")]
            [Required(ErrorMessage = "用户不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object UserId { get; set; }

			[DisplayName("性别")]
            [Required(ErrorMessage = "性别不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Gender { get; set; }

			[DisplayName("头像")]
            [Required(ErrorMessage = "头像不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Avatar { get; set; }

			[DisplayName("订单个数")]
            [Required(ErrorMessage = "订单个数不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object TotalOrder { get; set; }

			[DisplayName("QQ号")]
            [Required(ErrorMessage = "QQ号不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object QQ { get; set; }

			[DisplayName("备注")]
            [Required(ErrorMessage = "备注不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Remark { get; set; }
        }
    }
}
