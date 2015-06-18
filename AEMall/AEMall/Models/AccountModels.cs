using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
namespace Models
{
    #region Models

    public class ChangePasswordModel : IValidatableObject
    {
        [Required]
        [DataType(DataType.Password)]
        [DisplayName("原密码")]
        public string OldPassword { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [DisplayName("新密码")]
        public string NewPassword { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [DisplayName("确认新密码")]
        public string ConfirmPassword { get; set; }

        public System.Collections.Generic.IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            if (NewPassword != ConfirmPassword)
                yield return new ValidationResult("两次输入的密码不同", new string[] { "NewPassword", "ConfirmPassword" });
        }
    }

    public class LogOnModel
    {
        [DisplayName("用户名")]
        [Required(ErrorMessage = "*")]
        public string Name { get; set; }

        [DataType(DataType.Password)]
        [DisplayName("密码")]
        [Required(ErrorMessage = "*")]
        public string Password { get; set; }

        [DisplayName("记住?")]
        public bool RememberMe { get; set; }
    }

    public class RegModel : IValidatableObject
    {
        [DisplayName("Email地址")]
        [Required(ErrorMessage = "请输入您的邮箱地址，方便接受通知、验证邮件等")]
        [RegularExpression(@"^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$",ErrorMessage="邮箱格式不正确！请重新输入")]
        public string Email { get; set; }

        [DisplayName("用户名")]
        [Required(ErrorMessage = "请输入用户名")]
        [StringLength(20, ErrorMessage="请输入字符长度为4-20的用户名", MinimumLength=4)]
        public string Name { get; set; }

        [DataType(DataType.Password)]
        [DisplayName("密码")]
        [Required(ErrorMessage = "请输入密码")]
        [StringLength(20, ErrorMessage = "请输入字符长度为6-20的密码", MinimumLength = 6)]
        public string Password { get; set; }

        [DisplayName("密码确认")]
        [Required(ErrorMessage = "请再输入一次密码")]
        [DataType(DataType.Password)]
        public string ConfirmPassword { get; set; }

        [DisplayName("验证码")]
        [Required(ErrorMessage = "请输入验证码")]
        public string AuthCode { get; set; }

        public System.Collections.Generic.IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            if (Password != ConfirmPassword)
                yield return new ValidationResult("两次输入的密码不同", new string[] { "Password", "ConfirmPassword" });
        }
    }
    #endregion
}
