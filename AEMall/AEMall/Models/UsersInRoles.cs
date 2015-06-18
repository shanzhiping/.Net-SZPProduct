using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(UsersInRolesMetaData))]
	[DisplayName("UsersInRoles")]
    public partial class UsersInRoles
    {       
	    public UsersInRoles()
		{
			this.Id = Guid.NewGuid();
		}
        public class UsersInRolesMetaData
        {
			[DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }
			
			[DisplayName("简述")]
            [Required(ErrorMessage = "简述不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

			[DisplayName("用户")]
            [Required(ErrorMessage = "用户不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object UserId { get; set; }

			[DisplayName("角色")]
            [Required(ErrorMessage = "角色不得为空")]
			[DisplayFormat(ConvertEmptyStringToNull = false)]
            public object RoleId { get; set; }
        }
    }
}
