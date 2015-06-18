using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(UsersMetaData))]
	[DisplayName("Users")]
    public partial class Users
    {       
	    public Users()
		{
			this.Id = Guid.NewGuid();
		}
        public class UsersMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("用户名")]
            [Required(ErrorMessage = "用户名不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("密码")]
            [Required(ErrorMessage = "密码不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Password { get; set; }

			[DisplayName("姓名")]
            [Required(ErrorMessage = "姓名不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object RealName { get; set; }

			[DisplayName("级别")]
            [Required(ErrorMessage = "级别不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object RankId { get; set; }

			[DisplayName("管理用户？")]
            [Required(ErrorMessage = "管理用户？不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object IsPower { get; set; }

			[DisplayName("是否激活")]
            [Required(ErrorMessage = "是否激活不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object IsActive { get; set; }

			[DisplayName("所属地区")]
            [Required(ErrorMessage = "所属地区不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object RegionId { get; set; }

			[DisplayName("手机号")]
            [Required(ErrorMessage = "手机号不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Mobil { get; set; }

            [DisplayName("电子邮件")]
            [Required(ErrorMessage = "电子邮件不得为空")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Email { get; set; }

        }
    }
}
