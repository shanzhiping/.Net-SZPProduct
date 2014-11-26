using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SZP.Core;
using System.ComponentModel;


namespace SZP.Entity
{
    [Description("菜单行为")]
    public partial class SysOperation : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysOperation"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///MenuID菜单Id
        ///</summary>
        [DataField(Name = "MenuID", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid MenuID
        {
            get
            {
                return _MenuID;
            }
            set
            {
                _MenuID = value;
                OnFieldChanged("MenuID");
            }
        }
        private Guid _MenuID = Guid.Empty;



        ///<summary>
        ///Title名称
        ///</summary>
        [DataField(Name = "Title", IsKey = false, IsNullable = false, Length = 50)]
        public string Title
        {
            get
            {
                return _Title;
            }
            set
            {
                _Title = value;
                OnFieldChanged("Title");
            }
        }
        private string _Title = "";


        ///<summary>
        ///EnglishTitle英文名称
        ///</summary>
        [DataField(Name = "EnglishTitle", IsKey = false, IsNullable = true, Length = 100)]
        public string EnglishTitle
        {
            get
            {
                return _EnglishTitle;
            }
            set
            {
                _EnglishTitle = value;
                OnFieldChanged("EnglishTitle");
            }
        }
        private string _EnglishTitle = "";


        ///<summary>
        ///ControlId控件Id
        ///</summary>
        [DataField(Name = "ControlId", IsKey = false, IsNullable = false, Length = 100)]
        public string ControlId
        {
            get
            {
                return _ControlId;
            }
            set
            {
                _ControlId = value;
                OnFieldChanged("ControlId");
            }
        }
        private string _ControlId = "";


        ///<summary>
        ///IconUrl控件图标
        ///</summary>
        [DataField(Name = "IconUrl", IsKey = false, IsNullable = true, Length = 100)]
        public string IconUrl
        {
            get
            {
                return _IconUrl;
            }
            set
            {
                _IconUrl = value;
                OnFieldChanged("IconUrl");
            }
        }
        private string _IconUrl = "";


        ///<summary>
        ///Ordinal排序
        ///</summary>
        [DataField(Name = "Ordinal", IsKey = false, IsNullable = true, Length = 100)]
        public string Ordinal
        {
            get
            {
                return _Ordinal;
            }
            set
            {
                _Ordinal = value;
                OnFieldChanged("Ordinal");
            }
        }
        private string _Ordinal = "";


        ///<summary>
        ///IsEnable是否启用  0启用     1不启用
        ///</summary>
        [DataField(Name = "IsEnable", IsKey = false, IsNullable = true, Length = 1)]
        public bool IsEnable
        {
            get
            {
                return _IsEnable;
            }
            set
            {
                _IsEnable = value;
                OnFieldChanged("IsEnable");
            }
        }
        private bool _IsEnable = false;


        #endregion
    }
    [Description("角色表")]
    public partial class SysGroup : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysGroup"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///Name角色名称
        ///</summary>
        [DataField(Name = "Name", IsKey = false, IsNullable = false, Length = 100)]
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
                OnFieldChanged("Name");
            }
        }
        private string _Name = "";


        ///<summary>
        ///EnglishName英文名称
        ///</summary>
        [DataField(Name = "EnglishName", IsKey = false, IsNullable = true, Length = 100)]
        public string EnglishName
        {
            get
            {
                return _EnglishName;
            }
            set
            {
                _EnglishName = value;
                OnFieldChanged("EnglishName");
            }
        }
        private string _EnglishName = "";


        ///<summary>
        ///OrganizationalId所属组织结构
        ///</summary>
        [DataField(Name = "OrganizationalId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid OrganizationalId
        {
            get
            {
                return _OrganizationalId;
            }
            set
            {
                _OrganizationalId = value;
                OnFieldChanged("OrganizationalId");
            }
        }
        private Guid _OrganizationalId = Guid.Empty;



        ///<summary>
        ///Remark描述
        ///</summary>
        [DataField(Name = "Remark", IsKey = false, IsNullable = true, Length = 1000)]
        public string Remark
        {
            get
            {
                return _Remark;
            }
            set
            {
                _Remark = value;
                OnFieldChanged("Remark");
            }
        }
        private string _Remark = "";


        ///<summary>
        ///IsEnable是否启用  0启用     1不启用
        ///</summary>
        [DataField(Name = "IsEnable", IsKey = false, IsNullable = true, Length = 1)]
        public bool IsEnable
        {
            get
            {
                return _IsEnable;
            }
            set
            {
                _IsEnable = value;
                OnFieldChanged("IsEnable");
            }
        }
        private bool _IsEnable = false;


        ///<summary>
        ///IsDeleted是否删除   0 否    1是
        ///</summary>
        [DataField(Name = "IsDeleted", IsKey = false, IsNullable = true, Length = 1)]
        public bool IsDeleted
        {
            get
            {
                return _IsDeleted;
            }
            set
            {
                _IsDeleted = value;
                OnFieldChanged("IsDeleted");
            }
        }
        private bool _IsDeleted = false;


        ///<summary>
        ///CreatedBy创建人
        ///</summary>
        [DataField(Name = "CreatedBy", IsKey = false, IsNullable = true, Length = 100)]
        public string CreatedBy
        {
            get
            {
                return _CreatedBy;
            }
            set
            {
                _CreatedBy = value;
                OnFieldChanged("CreatedBy");
            }
        }
        private string _CreatedBy = "";


        ///<summary>
        ///CreatedTime创建时间
        ///</summary>
        [DataField(Name = "CreatedTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime CreatedTime
        {
            get
            {
                return _CreatedTime;
            }
            set
            {
                _CreatedTime = value;
                OnFieldChanged("CreatedTime");
            }
        }
        private DateTime _CreatedTime = DateTime.Parse("1900-1-1");


        ///<summary>
        ///LastupdateBy最后修改人
        ///</summary>
        [DataField(Name = "LastupdateBy", IsKey = false, IsNullable = true, Length = 100)]
        public string LastupdateBy
        {
            get
            {
                return _LastupdateBy;
            }
            set
            {
                _LastupdateBy = value;
                OnFieldChanged("LastupdateBy");
            }
        }
        private string _LastupdateBy = "";


        ///<summary>
        ///LastupdateTime修改时间
        ///</summary>
        [DataField(Name = "LastupdateTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime LastupdateTime
        {
            get
            {
                return _LastupdateTime;
            }
            set
            {
                _LastupdateTime = value;
                OnFieldChanged("LastupdateTime");
            }
        }
        private DateTime _LastupdateTime = DateTime.Parse("1900-1-1");


        #endregion
    }
    [Description("用户菜单")]
    public partial class SysUserMenu : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysUserMenu"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///UserId用户Id
        ///</summary>
        [DataField(Name = "UserId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid UserId
        {
            get
            {
                return _UserId;
            }
            set
            {
                _UserId = value;
                OnFieldChanged("UserId");
            }
        }
        private Guid _UserId = Guid.Empty;



        ///<summary>
        ///OrganizationalId组织结构编号
        ///</summary>
        [DataField(Name = "OrganizationalId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid OrganizationalId
        {
            get
            {
                return _OrganizationalId;
            }
            set
            {
                _OrganizationalId = value;
                OnFieldChanged("OrganizationalId");
            }
        }
        private Guid _OrganizationalId = Guid.Empty;



        ///<summary>
        ///MenuId菜单Id
        ///</summary>
        [DataField(Name = "MenuId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid MenuId
        {
            get
            {
                return _MenuId;
            }
            set
            {
                _MenuId = value;
                OnFieldChanged("MenuId");
            }
        }
        private Guid _MenuId = Guid.Empty;



        ///<summary>
        ///OperationIds菜单行为ID是 用,隔开
        ///</summary>
        [DataField(Name = "OperationIds", IsKey = false, IsNullable = true, Length = 2000)]
        public string OperationIds
        {
            get
            {
                return _OperationIds;
            }
            set
            {
                _OperationIds = value;
                OnFieldChanged("OperationIds");
            }
        }
        private string _OperationIds = "";


        #endregion
    }
    [Description("角色菜单")]
    public partial class SysGroupMenu : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysGroupMenu"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///GroupId用户编号
        ///</summary>
        [DataField(Name = "GroupId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid GroupId
        {
            get
            {
                return _GroupId;
            }
            set
            {
                _GroupId = value;
                OnFieldChanged("GroupId");
            }
        }
        private Guid _GroupId = Guid.Empty;



        ///<summary>
        ///MenuId菜单Id
        ///</summary>
        [DataField(Name = "MenuId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid MenuId
        {
            get
            {
                return _MenuId;
            }
            set
            {
                _MenuId = value;
                OnFieldChanged("MenuId");
            }
        }
        private Guid _MenuId = Guid.Empty;



        ///<summary>
        ///OperationIds菜单行为ID是 用,隔开
        ///</summary>
        [DataField(Name = "OperationIds", IsKey = false, IsNullable = true, Length = 2000)]
        public string OperationIds
        {
            get
            {
                return _OperationIds;
            }
            set
            {
                _OperationIds = value;
                OnFieldChanged("OperationIds");
            }
        }
        private string _OperationIds = "";


        #endregion
    }
    [Description("系统日志")]
    public partial class SysLog : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysLog"; }
        }


        #region fields
        ///<summary>
        ///Id日志编号
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///EventId事件ID
        ///</summary>
        [DataField(Name = "EventId", IsKey = false, IsNullable = false, Length = 4)]
        public int EventId
        {
            get
            {
                return _EventId;
            }
            set
            {
                _EventId = value;
                OnFieldChanged("EventId");
            }
        }
        private int _EventId = 0;


        ///<summary>
        ///EventName事件名称
        ///</summary>
        [DataField(Name = "EventName", IsKey = false, IsNullable = false, Length = 100)]
        public string EventName
        {
            get
            {
                return _EventName;
            }
            set
            {
                _EventName = value;
                OnFieldChanged("EventName");
            }
        }
        private string _EventName = "";


        ///<summary>
        ///Description事件描述
        ///</summary>
        [DataField(Name = "Description", IsKey = false, IsNullable = false, Length = 1000)]
        public string Description
        {
            get
            {
                return _Description;
            }
            set
            {
                _Description = value;
                OnFieldChanged("Description");
            }
        }
        private string _Description = "";


        ///<summary>
        ///CreateAt发生时间
        ///</summary>
        [DataField(Name = "CreateAt", IsKey = false, IsNullable = false, Length = 8)]
        public DateTime CreateAt
        {
            get
            {
                return _CreateAt;
            }
            set
            {
                _CreateAt = value;
                OnFieldChanged("CreateAt");
            }
        }
        private DateTime _CreateAt = DateTime.Parse("1900-1-1");


        ///<summary>
        ///IP操作IP
        ///</summary>
        [DataField(Name = "IP", IsKey = false, IsNullable = false, Length = 20)]
        public string IP
        {
            get
            {
                return _IP;
            }
            set
            {
                _IP = value;
                OnFieldChanged("IP");
            }
        }
        private string _IP = "";


        ///<summary>
        ///UserId操作人编号
        ///</summary>
        [DataField(Name = "UserName", IsKey = false, IsNullable = false, Length = 16)]
        public string UserName
        {
            get
            {
                return _UserName;
            }
            set
            {
                _UserName = value;
                OnFieldChanged("UserName");
            }
        }
        private string _UserName;



        ///<summary>
        ///OrganizationalId组织机构编号
        ///</summary>
        [DataField(Name = "OrganizationalId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid OrganizationalId
        {
            get
            {
                return _OrganizationalId;
            }
            set
            {
                _OrganizationalId = value;
                OnFieldChanged("OrganizationalId");
            }
        }
        private Guid _OrganizationalId = Guid.Empty;



        #endregion
    }
    [Description("组织结构表")]
    public partial class SysOrganizational : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysOrganizational"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///Name组织结构名称
        ///</summary>
        [DataField(Name = "Name", IsKey = false, IsNullable = false, Length = 100)]
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
                OnFieldChanged("Name");
            }
        }
        private string _Name = "";


        ///<summary>
        ///EnglishName英文名字
        ///</summary>
        [DataField(Name = "EnglishName", IsKey = false, IsNullable = true, Length = 100)]
        public string EnglishName
        {
            get
            {
                return _EnglishName;
            }
            set
            {
                _EnglishName = value;
                OnFieldChanged("EnglishName");
            }
        }
        private string _EnglishName = "";


        ///<summary>
        ///Adddrss位置
        ///</summary>
        [DataField(Name = "Adddrss", IsKey = false, IsNullable = true, Length = 400)]
        public string Adddrss
        {
            get
            {
                return _Adddrss;
            }
            set
            {
                _Adddrss = value;
                OnFieldChanged("Adddrss");
            }
        }
        private string _Adddrss = "";


        ///<summary>
        ///Phone电话
        ///</summary>
        [DataField(Name = "Phone", IsKey = false, IsNullable = true, Length = 100)]
        public string Phone
        {
            get
            {
                return _Phone;
            }
            set
            {
                _Phone = value;
                OnFieldChanged("Phone");
            }
        }
        private string _Phone = "";


        ///<summary>
        ///Fax传真
        ///</summary>
        [DataField(Name = "Fax", IsKey = false, IsNullable = true, Length = 60)]
        public string Fax
        {
            get
            {
                return _Fax;
            }
            set
            {
                _Fax = value;
                OnFieldChanged("Fax");
            }
        }
        private string _Fax = "";


        ///<summary>
        ///Remark备注
        ///</summary>
        [DataField(Name = "Remark", IsKey = false, IsNullable = true, Length = 1000)]
        public string Remark
        {
            get
            {
                return _Remark;
            }
            set
            {
                _Remark = value;
                OnFieldChanged("Remark");
            }
        }
        private string _Remark = "";


        ///<summary>
        ///CreatedBy创建人
        ///</summary>
        [DataField(Name = "CreatedBy", IsKey = false, IsNullable = true, Length = 40)]
        public string CreatedBy
        {
            get
            {
                return _CreatedBy;
            }
            set
            {
                _CreatedBy = value;
                OnFieldChanged("CreatedBy");
            }
        }
        private string _CreatedBy = "";


        ///<summary>
        ///CreatedTime创建时间
        ///</summary>
        [DataField(Name = "CreatedTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime CreatedTime
        {
            get
            {
                return _CreatedTime;
            }
            set
            {
                _CreatedTime = value;
                OnFieldChanged("CreatedTime");
            }
        }
        private DateTime _CreatedTime=DateTime .Now ;


        ///<summary>
        ///LastupdateBy最后修改名称
        ///</summary>
        [DataField(Name = "LastupdateBy", IsKey = false, IsNullable = true, Length = 40)]
        public string LastupdateBy
        {
            get
            {
                return _LastupdateBy;
            }
            set
            {
                _LastupdateBy = value;
                OnFieldChanged("LastupdateBy");
            }
        }
        private string _LastupdateBy = "";


        ///<summary>
        ///LastupdateTime最后修改人
        ///</summary>
        [DataField(Name = "LastupdateTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime LastupdateTime
        {
            get
            {
                return _LastupdateTime;
            }
            set
            {
                _LastupdateTime = value;
                OnFieldChanged("LastupdateTime");
            }
        }
        private DateTime _LastupdateTime=DateTime .Now ;


        #endregion
    }
    [Description("部门结构")]
    public partial class SysDepartment : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysDepartment"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///Name部门名称
        ///</summary>
        [DataField(Name = "Name", IsKey = false, IsNullable = false, Length = 100)]
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
                OnFieldChanged("Name");
            }
        }
        private string _Name = "";


        ///<summary>
        ///EnglishName英文名称
        ///</summary>
        [DataField(Name = "EnglishName", IsKey = false, IsNullable = true, Length = 100)]
        public string EnglishName
        {
            get
            {
                return _EnglishName;
            }
            set
            {
                _EnglishName = value;
                OnFieldChanged("EnglishName");
            }
        }
        private string _EnglishName = "";


        ///<summary>
        ///OrganizationalId组织结构编号
        ///</summary>
        [DataField(Name = "OrganizationalId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid OrganizationalId
        {
            get
            {
                return _OrganizationalId;
            }
            set
            {
                _OrganizationalId = value;
                OnFieldChanged("OrganizationalId");
            }
        }
        private Guid _OrganizationalId = Guid.Empty;



        ///<summary>
        ///ParentId上级部门
        ///</summary>
        [DataField(Name = "ParentId", IsKey = false, IsNullable = true, DataType = "uniqueidentifier", Length = 16)]
        public Guid ParentId
        {
            get
            {
                return _ParentId;
            }
            set
            {
                _ParentId = value;
                OnFieldChanged("ParentId");
            }
        }
        private Guid _ParentId = Guid.Empty;



        ///<summary>
        ///Adddrss地址
        ///</summary>
        [DataField(Name = "Adddrss", IsKey = false, IsNullable = true, Length = 400)]
        public string Adddrss
        {
            get
            {
                return _Adddrss;
            }
            set
            {
                _Adddrss = value;
                OnFieldChanged("Adddrss");
            }
        }
        private string _Adddrss = "";


        ///<summary>
        ///Phone电话
        ///</summary>
        [DataField(Name = "Phone", IsKey = false, IsNullable = true, Length = 100)]
        public string Phone
        {
            get
            {
                return _Phone;
            }
            set
            {
                _Phone = value;
                OnFieldChanged("Phone");
            }
        }
        private string _Phone = "";


        ///<summary>
        ///Fax传真
        ///</summary>
        [DataField(Name = "Fax", IsKey = false, IsNullable = true, Length = 60)]
        public string Fax
        {
            get
            {
                return _Fax;
            }
            set
            {
                _Fax = value;
                OnFieldChanged("Fax");
            }
        }
        private string _Fax = "";


        ///<summary>
        ///Remark备注
        ///</summary>
        [DataField(Name = "Remark", IsKey = false, IsNullable = true, Length = 1000)]
        public string Remark
        {
            get
            {
                return _Remark;
            }
            set
            {
                _Remark = value;
                OnFieldChanged("Remark");
            }
        }
        private string _Remark = "";


        ///<summary>
        ///CreatedBy创建人
        ///</summary>
        [DataField(Name = "CreatedBy", IsKey = false, IsNullable = true, Length = 40)]
        public string CreatedBy
        {
            get
            {
                return _CreatedBy;
            }
            set
            {
                _CreatedBy = value;
                OnFieldChanged("CreatedBy");
            }
        }
        private string _CreatedBy = "";


        ///<summary>
        ///CreatedTime创建时间
        ///</summary>
        [DataField(Name = "CreatedTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime CreatedTime
        {
            get
            {
                return _CreatedTime;
            }
            set
            {
                _CreatedTime = value;
                OnFieldChanged("CreatedTime");
            }
        }
        private DateTime _CreatedTime = DateTime.Parse("1900-1-1");


        ///<summary>
        ///LastupdateBy最后修改名称
        ///</summary>
        [DataField(Name = "LastupdateBy", IsKey = false, IsNullable = true, Length = 40)]
        public string LastupdateBy
        {
            get
            {
                return _LastupdateBy;
            }
            set
            {
                _LastupdateBy = value;
                OnFieldChanged("LastupdateBy");
            }
        }
        private string _LastupdateBy = "";


        ///<summary>
        ///LastupdateTime最后修改人
        ///</summary>
        [DataField(Name = "LastupdateTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime LastupdateTime
        {
            get
            {
                return _LastupdateTime;
            }
            set
            {
                _LastupdateTime = value;
                OnFieldChanged("LastupdateTime");
            }
        }
        private DateTime _LastupdateTime = DateTime.Parse("1900-1-1");


        #endregion
    }
    [Description("职称")]
    public partial class SysPosition : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysPosition"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///Name职位名称
        ///</summary>
        [DataField(Name = "Name", IsKey = false, IsNullable = false, Length = 100)]
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
                OnFieldChanged("Name");
            }
        }
        private string _Name = "";


        ///<summary>
        ///EnglishName英文名称
        ///</summary>
        [DataField(Name = "EnglishName", IsKey = false, IsNullable = true, Length = 100)]
        public string EnglishName
        {
            get
            {
                return _EnglishName;
            }
            set
            {
                _EnglishName = value;
                OnFieldChanged("EnglishName");
            }
        }
        private string _EnglishName = "";


        ///<summary>
        ///DepartmentId所属部门
        ///</summary>
        [DataField(Name = "DepartmentId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid DepartmentId
        {
            get
            {
                return _DepartmentId;
            }
            set
            {
                _DepartmentId = value;
                OnFieldChanged("DepartmentId");
            }
        }
        private Guid _DepartmentId = Guid.Empty;



        ///<summary>
        ///Remark备注
        ///</summary>
        [DataField(Name = "Remark", IsKey = false, IsNullable = true, Length = 1000)]
        public string Remark
        {
            get
            {
                return _Remark;
            }
            set
            {
                _Remark = value;
                OnFieldChanged("Remark");
            }
        }
        private string _Remark = "";


        ///<summary>
        ///CreatedBy创建人
        ///</summary>
        [DataField(Name = "CreatedBy", IsKey = false, IsNullable = true, Length = 40)]
        public string CreatedBy
        {
            get
            {
                return _CreatedBy;
            }
            set
            {
                _CreatedBy = value;
                OnFieldChanged("CreatedBy");
            }
        }
        private string _CreatedBy = "";


        ///<summary>
        ///CreatedTime创建时间
        ///</summary>
        [DataField(Name = "CreatedTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime CreatedTime
        {
            get
            {
                return _CreatedTime;
            }
            set
            {
                _CreatedTime = value;
                OnFieldChanged("CreatedTime");
            }
        }
        private DateTime _CreatedTime = DateTime.Parse("1900-1-1");


        ///<summary>
        ///LastupdateBy最后修改名称
        ///</summary>
        [DataField(Name = "LastupdateBy", IsKey = false, IsNullable = true, Length = 40)]
        public string LastupdateBy
        {
            get
            {
                return _LastupdateBy;
            }
            set
            {
                _LastupdateBy = value;
                OnFieldChanged("LastupdateBy");
            }
        }
        private string _LastupdateBy = "";


        ///<summary>
        ///LastupdateTime最后修改人
        ///</summary>
        [DataField(Name = "LastupdateTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime LastupdateTime
        {
            get
            {
                return _LastupdateTime;
            }
            set
            {
                _LastupdateTime = value;
                OnFieldChanged("LastupdateTime");
            }
        }
        private DateTime _LastupdateTime = DateTime.Parse("1900-1-1");


        #endregion
    }
    [Description("员工")]
    public partial class SysEmployees : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysEmployees"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///Number员工编号
        ///</summary>
        [DataField(Name = "Number", IsKey = false, IsNullable = false, Length = 40)]
        public string Number
        {
            get
            {
                return _Number;
            }
            set
            {
                _Number = value;
                OnFieldChanged("Number");
            }
        }
        private string _Number = "";


        ///<summary>
        ///JobNumber自定义员工编号
        ///</summary>
        [DataField(Name = "JobNumber", IsKey = false, IsNullable = true, Length = 40)]
        public string JobNumber
        {
            get
            {
                return _JobNumber;
            }
            set
            {
                _JobNumber = value;
                OnFieldChanged("JobNumber");
            }
        }
        private string _JobNumber = "";


        ///<summary>
        ///Name员工姓名
        ///</summary>
        [DataField(Name = "Name", IsKey = false, IsNullable = false, Length = 100)]
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
                OnFieldChanged("Name");
            }
        }
        private string _Name = "";


        ///<summary>
        ///Sex员工性别  1男   2女  3其他
        ///</summary>
        [DataField(Name = "Sex", IsKey = false, IsNullable = false, Length = 4)]
        public int Sex
        {
            get
            {
                return _Sex;
            }
            set
            {
                _Sex = value;
                OnFieldChanged("Sex");
            }
        }
        private int _Sex = 0;


        ///<summary>
        ///Birth员工出生日期
        ///</summary>
        [DataField(Name = "Birth", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime Birth
        {
            get
            {
                return _Birth;
            }
            set
            {
                _Birth = value;
                OnFieldChanged("Birth");
            }
        }
        private DateTime _Birth = DateTime.Parse("1900-1-1");


        ///<summary>
        ///Telephone联系电话
        ///</summary>
        [DataField(Name = "Telephone", IsKey = false, IsNullable = true, Length = 100)]
        public string Telephone
        {
            get
            {
                return _Telephone;
            }
            set
            {
                _Telephone = value;
                OnFieldChanged("Telephone");
            }
        }
        private string _Telephone = "";


        ///<summary>
        ///DepartmentId归属部门
        ///</summary>
        [DataField(Name = "DepartmentId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid DepartmentId
        {
            get
            {
                return _DepartmentId;
            }
            set
            {
                _DepartmentId = value;
                OnFieldChanged("DepartmentId");
            }
        }
        private Guid _DepartmentId = Guid.Empty;



        ///<summary>
        ///EntryTime离职时间
        ///</summary>
        [DataField(Name = "EntryTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime EntryTime
        {
            get
            {
                return _EntryTime;
            }
            set
            {
                _EntryTime = value;
                OnFieldChanged("EntryTime");
            }
        }
        private DateTime _EntryTime = DateTime.Parse("1900-1-1");


        ///<summary>
        ///QuitTime
        ///</summary>
        [DataField(Name = "QuitTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime QuitTime
        {
            get
            {
                return _QuitTime;
            }
            set
            {
                _QuitTime = value;
                OnFieldChanged("QuitTime");
            }
        }
        private DateTime _QuitTime = DateTime.Parse("1900-1-1");


        ///<summary>
        ///PositionId工作职位
        ///</summary>
        [DataField(Name = "PositionId", IsKey = false, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid PositionId
        {
            get
            {
                return _PositionId;
            }
            set
            {
                _PositionId = value;
                OnFieldChanged("PositionId");
            }
        }
        private Guid _PositionId = Guid.Empty;



        ///<summary>
        ///WorkPart工作类别
        ///</summary>
        [DataField(Name = "WorkPart", IsKey = false, IsNullable = true, Length = 100)]
        public string WorkPart
        {
            get
            {
                return _WorkPart;
            }
            set
            {
                _WorkPart = value;
                OnFieldChanged("WorkPart");
            }
        }
        private string _WorkPart = "";


        ///<summary>
        ///SchoolRecord学位   枚举  1高中    2大专   3本科   4博士
        ///</summary>
        [DataField(Name = "SchoolRecord", IsKey = false, IsNullable = false, Length = 4)]
        public int SchoolRecord
        {
            get
            {
                return _SchoolRecord;
            }
            set
            {
                _SchoolRecord = value;
                OnFieldChanged("SchoolRecord");
            }
        }
        private int _SchoolRecord = 0;


        ///<summary>
        ///WorkPlaceWant工作地点意向
        ///</summary>
        [DataField(Name = "WorkPlaceWant", IsKey = false, IsNullable = true, Length = 500)]
        public string WorkPlaceWant
        {
            get
            {
                return _WorkPlaceWant;
            }
            set
            {
                _WorkPlaceWant = value;
                OnFieldChanged("WorkPlaceWant");
            }
        }
        private string _WorkPlaceWant = "";


        ///<summary>
        ///WorkRank技能评估
        ///</summary>
        [DataField(Name = "WorkRank", IsKey = false, IsNullable = true, Length = 500)]
        public string WorkRank
        {
            get
            {
                return _WorkRank;
            }
            set
            {
                _WorkRank = value;
                OnFieldChanged("WorkRank");
            }
        }
        private string _WorkRank = "";


        ///<summary>
        ///WorkCompetence工作能力
        ///</summary>
        [DataField(Name = "WorkCompetence", IsKey = false, IsNullable = true, Length = 500)]
        public string WorkCompetence
        {
            get
            {
                return _WorkCompetence;
            }
            set
            {
                _WorkCompetence = value;
                OnFieldChanged("WorkCompetence");
            }
        }
        private string _WorkCompetence = "";


        ///<summary>
        ///CurrentProjectId现在所在项目
        ///</summary>
        [DataField(Name = "CurrentProjectId", IsKey = false, IsNullable = true, DataType = "uniqueidentifier", Length = 16)]
        public Guid CurrentProjectId
        {
            get
            {
                return _CurrentProjectId;
            }
            set
            {
                _CurrentProjectId = value;
                OnFieldChanged("CurrentProjectId");
            }
        }
        private Guid _CurrentProjectId = Guid.Empty;



        ///<summary>
        ///WorkExperience工作经验
        ///</summary>
        [DataField(Name = "WorkExperience", IsKey = false, IsNullable = true, Length = 500)]
        public string WorkExperience
        {
            get
            {
                return _WorkExperience;
            }
            set
            {
                _WorkExperience = value;
                OnFieldChanged("WorkExperience");
            }
        }
        private string _WorkExperience = "";


        ///<summary>
        ///Address居住地址
        ///</summary>
        [DataField(Name = "Address", IsKey = false, IsNullable = true, Length = 500)]
        public string Address
        {
            get
            {
                return _Address;
            }
            set
            {
                _Address = value;
                OnFieldChanged("Address");
            }
        }
        private string _Address = "";


        ///<summary>
        ///Census籍贯
        ///</summary>
        [DataField(Name = "Census", IsKey = false, IsNullable = true, Length = 100)]
        public string Census
        {
            get
            {
                return _Census;
            }
            set
            {
                _Census = value;
                OnFieldChanged("Census");
            }
        }
        private string _Census = "";


        ///<summary>
        ///NativePlace户口所在地
        ///</summary>
        [DataField(Name = "NativePlace", IsKey = false, IsNullable = true, Length = 500)]
        public string NativePlace
        {
            get
            {
                return _NativePlace;
            }
            set
            {
                _NativePlace = value;
                OnFieldChanged("NativePlace");
            }
        }
        private string _NativePlace = "";


        ///<summary>
        ///Nation民族
        ///</summary>
        [DataField(Name = "Nation", IsKey = false, IsNullable = true, Length = 100)]
        public string Nation
        {
            get
            {
                return _Nation;
            }
            set
            {
                _Nation = value;
                OnFieldChanged("Nation");
            }
        }
        private string _Nation = "";


        ///<summary>
        ///Individualphone个人联系电话
        ///</summary>
        [DataField(Name = "Individualphone", IsKey = false, IsNullable = true, Length = 40)]
        public string Individualphone
        {
            get
            {
                return _Individualphone;
            }
            set
            {
                _Individualphone = value;
                OnFieldChanged("Individualphone");
            }
        }
        private string _Individualphone = "";


        ///<summary>
        ///Emailmail
        ///</summary>
        [DataField(Name = "Email", IsKey = false, IsNullable = true, Length = 100)]
        public string Email
        {
            get
            {
                return _Email;
            }
            set
            {
                _Email = value;
                OnFieldChanged("Email");
            }
        }
        private string _Email = "";


        ///<summary>
        ///IndirectContacts间接联系人
        ///</summary>
        [DataField(Name = "IndirectContacts", IsKey = false, IsNullable = true, Length = 100)]
        public string IndirectContacts
        {
            get
            {
                return _IndirectContacts;
            }
            set
            {
                _IndirectContacts = value;
                OnFieldChanged("IndirectContacts");
            }
        }
        private string _IndirectContacts = "";


        ///<summary>
        ///IndirectContactsPhone间接联系人电话
        ///</summary>
        [DataField(Name = "IndirectContactsPhone", IsKey = false, IsNullable = true, Length = 100)]
        public string IndirectContactsPhone
        {
            get
            {
                return _IndirectContactsPhone;
            }
            set
            {
                _IndirectContactsPhone = value;
                OnFieldChanged("IndirectContactsPhone");
            }
        }
        private string _IndirectContactsPhone = "";


        ///<summary>
        ///Idcard身份证号
        ///</summary>
        [DataField(Name = "Idcard", IsKey = false, IsNullable = true, Length = 100)]
        public string Idcard
        {
            get
            {
                return _Idcard;
            }
            set
            {
                _Idcard = value;
                OnFieldChanged("Idcard");
            }
        }
        private string _Idcard = "";


        ///<summary>
        ///Postalcode
        ///</summary>
        [DataField(Name = "Postalcode", IsKey = false, IsNullable = true, Length = 40)]
        public string Postalcode
        {
            get
            {
                return _Postalcode;
            }
            set
            {
                _Postalcode = value;
                OnFieldChanged("Postalcode");
            }
        }
        private string _Postalcode = "";


        ///<summary>
        ///Finishschool户口邮政编码
        ///</summary>
        [DataField(Name = "Finishschool", IsKey = false, IsNullable = true, Length = 40)]
        public string Finishschool
        {
            get
            {
                return _Finishschool;
            }
            set
            {
                _Finishschool = value;
                OnFieldChanged("Finishschool");
            }
        }
        private string _Finishschool = "";


        ///<summary>
        ///Finishtime毕业时间
        ///</summary>
        [DataField(Name = "Finishtime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime Finishtime
        {
            get
            {
                return _Finishtime;
            }
            set
            {
                _Finishtime = value;
                OnFieldChanged("Finishtime");
            }
        }
        private DateTime _Finishtime = DateTime.Parse("1900-1-1");


        ///<summary>
        ///Remark备注
        ///</summary>
        [DataField(Name = "Remark", IsKey = false, IsNullable = true, Length = 1000)]
        public string Remark
        {
            get
            {
                return _Remark;
            }
            set
            {
                _Remark = value;
                OnFieldChanged("Remark");
            }
        }
        private string _Remark = "";


        ///<summary>
        ///CreatedBy创建人
        ///</summary>
        [DataField(Name = "CreatedBy", IsKey = false, IsNullable = true, Length = 40)]
        public string CreatedBy
        {
            get
            {
                return _CreatedBy;
            }
            set
            {
                _CreatedBy = value;
                OnFieldChanged("CreatedBy");
            }
        }
        private string _CreatedBy = "";


        ///<summary>
        ///CreatedTime创建时间
        ///</summary>
        [DataField(Name = "CreatedTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime CreatedTime
        {
            get
            {
                return _CreatedTime;
            }
            set
            {
                _CreatedTime = value;
                OnFieldChanged("CreatedTime");
            }
        }
        private DateTime _CreatedTime = DateTime.Parse("1900-1-1");


        ///<summary>
        ///LastupdateBy最后修改名称
        ///</summary>
        [DataField(Name = "LastupdateBy", IsKey = false, IsNullable = true, Length = 40)]
        public string LastupdateBy
        {
            get
            {
                return _LastupdateBy;
            }
            set
            {
                _LastupdateBy = value;
                OnFieldChanged("LastupdateBy");
            }
        }
        private string _LastupdateBy = "";


        ///<summary>
        ///LastupdateTime最后修改人
        ///</summary>
        [DataField(Name = "LastupdateTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime LastupdateTime
        {
            get
            {
                return _LastupdateTime;
            }
            set
            {
                _LastupdateTime = value;
                OnFieldChanged("LastupdateTime");
            }
        }
        private DateTime _LastupdateTime = DateTime.Parse("1900-1-1");


        #endregion
    }
    [Description("用户")]
    public partial class SysUser : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysUser"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///Name名称
        ///</summary>
        [DataField(Name = "Name", IsKey = false, IsNullable = false, Length = 100)]
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
                OnFieldChanged("Name");
            }
        }
        private string _Name = "";


        ///<summary>
        ///Account登入帐号
        ///</summary>
        [DataField(Name = "Account", IsKey = false, IsNullable = false, Length = 100)]
        public string Account
        {
            get
            {
                return _Account;
            }
            set
            {
                _Account = value;
                OnFieldChanged("Account");
            }
        }
        private string _Account = "";


        ///<summary>
        ///Password登入密码
        ///</summary>
        [DataField(Name = "Password", IsKey = false, IsNullable = false, Length = 100)]
        public string Password
        {
            get
            {
                return _Password;
            }
            set
            {
                _Password = value;
                OnFieldChanged("Password");
            }
        }
        private string _Password = "";


        ///<summary>
        ///EmployeeId员工Id
        ///</summary>
        [DataField(Name = "EmployeeId", IsKey = false, IsNullable = true, DataType = "uniqueidentifier", Length = 16)]
        public Guid EmployeeId
        {
            get
            {
                return _EmployeeId;
            }
            set
            {
                _Id = value;
                OnFieldChanged("EmployeeId");
            }
        }
        private Guid _EmployeeId = Guid.Empty;



        ///<summary>
        ///Status用户状态 0是启用   1是禁用
        ///</summary>
        [DataField(Name = "Status", IsKey = false, IsNullable = false, Length = 1)]
        public bool Status
        {
            get
            {
                return _Status;
            }
            set
            {
                _Status = value;
                OnFieldChanged("Status");
            }
        }
        private bool _Status = false;


        ///<summary>
        ///Organizationals组织结构
        ///</summary>
        [DataField(Name = "Organizationals", IsKey = false, IsNullable = true, Length = 2000)]
        public string Organizationals
        {
            get
            {
                return _Organizationals;
            }
            set
            {
                _Organizationals = value;
                OnFieldChanged("Organizationals");
            }
        }
        private string _Organizationals = "";


        ///<summary>
        ///IsSystem是否为系统管理员
        ///</summary>
        [DataField(Name = "IsSystem", IsKey = false, IsNullable = false, Length = 1)]
        public bool IsSystem
        {
            get
            {
                return _IsSystem;
            }
            set
            {
                _IsSystem = value;
                OnFieldChanged("IsSystem");
            }
        }
        private bool _IsSystem = false;


        ///<summary>
        ///LoginIp登入IP
        ///</summary>
        [DataField(Name = "LoginIp", IsKey = false, IsNullable = true, Length = 20)]
        public string LoginIp
        {
            get
            {
                return _LoginIp;
            }
            set
            {
                _LoginIp = value;
                OnFieldChanged("LoginIp");
            }
        }
        private string _LoginIp = "";


        ///<summary>
        ///IsDeleted是否删除  0 false  1 true
        ///</summary>
        [DataField(Name = "IsDeleted", IsKey = false, IsNullable = false, Length = 1)]
        public bool IsDeleted
        {
            get
            {
                return _IsDeleted;
            }
            set
            {
                _IsDeleted = value;
                OnFieldChanged("IsDeleted");
            }
        }
        private bool _IsDeleted = false;


        ///<summary>
        ///CreatedBy创建人
        ///</summary>
        [DataField(Name = "CreatedBy", IsKey = false, IsNullable = true, Length = 40)]
        public string CreatedBy
        {
            get
            {
                return _CreatedBy;
            }
            set
            {
                _CreatedBy = value;
                OnFieldChanged("CreatedBy");
            }
        }
        private string _CreatedBy = "";


        ///<summary>
        ///CreatedTime创建时间
        ///</summary>
        [DataField(Name = "CreatedTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime CreatedTime
        {
            get
            {
                return _CreatedTime;
            }
            set
            {
                _CreatedTime = value;
                OnFieldChanged("CreatedTime");
            }
        }
        private DateTime _CreatedTime = DateTime.Parse("1900-1-1");


        ///<summary>
        ///LoginAt最后登入时间
        ///</summary>
        [DataField(Name = "LoginAt", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime LoginAt
        {
            get
            {
                return _LoginAt;
            }
            set
            {
                _LoginAt = value;
                OnFieldChanged("LoginAt");
            }
        }
        private DateTime _LoginAt = DateTime.Parse("1900-1-1");


        #endregion
    }
    [Description("菜单")]
    public partial class SysMenu : BaseEntity
    {

        public override string EntityKey
        {
            get { return "Id"; }
        }

        public override string EntitySetName
        {
            get { return "SysMenu"; }
        }


        #region fields
        ///<summary>
        ///Id主键
        ///</summary>
        [DataField(Name = "Id", IsKey = true, IsNullable = false, DataType = "uniqueidentifier", Length = 16)]
        public Guid Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
                OnFieldChanged("Id");
            }
        }
        private Guid _Id = Guid.Empty;



        ///<summary>
        ///ParentId上级菜单名称
        ///</summary>
        [DataField(Name = "ParentId", IsKey = false, IsNullable = true, DataType = "uniqueidentifier", Length = 16)]
        public Guid ParentId
        {
            get
            {
                return _ParentId;
            }
            set
            {
                _ParentId = value;
                OnFieldChanged("ParentId");
            }
        }
        private Guid _ParentId = Guid.Empty;



        ///<summary>
        ///Title菜单名称
        ///</summary>
        [DataField(Name = "Title", IsKey = false, IsNullable = false, Length = 100)]
        public string Title
        {
            get
            {
                return _Title;
            }
            set
            {
                _Title = value;
                OnFieldChanged("Title");
            }
        }
        private string _Title = "";


        ///<summary>
        ///EnglishTiTle英文名称
        ///</summary>
        [DataField(Name = "EnglishTitle", IsKey = false, IsNullable = true, Length = 100)]
        public string EnglishTitle
        {
            get
            {
                return _EnglishTitle;
            }
            set
            {
                _EnglishTitle = value;
                OnFieldChanged("EnglishTitle");
            }
        }
        private string _EnglishTitle = "";


        ///<summary>
        ///PageUrl菜单路劲
        ///</summary>
        [DataField(Name = "PageUrl", IsKey = false, IsNullable = true, Length = 100)]
        public string PageUrl
        {
            get
            {
                return _PageUrl;
            }
            set
            {
                _PageUrl = value;
                OnFieldChanged("PageUrl");
            }
        }
        private string _PageUrl = "";


        ///<summary>
        ///LocationType跳转方式   枚举 1-blank  2-parent  3-search   4-self   5-Top
        ///</summary>
        [DataField(Name = "LocationType", IsKey = false, IsNullable = true, Length = 100)]
        public string LocationType
        {
            get
            {
                return _LocationType;
            }
            set
            {
                _LocationType = value;
                OnFieldChanged("LocationType");
            }
        }
        private string _LocationType = "";


        ///<summary>
        ///IconUrl图标路径
        ///</summary>
        [DataField(Name = "IconUrl", IsKey = false, IsNullable = true, Length = 100)]
        public string IconUrl
        {
            get
            {
                return _IconUrl;
            }
            set
            {
                _IconUrl = value;
                OnFieldChanged("IconUrl");
            }
        }
        private string _IconUrl = "";


        ///<summary>
        ///ImageUrl图片路径
        ///</summary>
        [DataField(Name = "ImageUrl", IsKey = false, IsNullable = true, Length = 100)]
        public string ImageUrl
        {
            get
            {
                return _ImageUrl;
            }
            set
            {
                _ImageUrl = value;
                OnFieldChanged("ImageUrl");
            }
        }
        private string _ImageUrl = "";


        ///<summary>
        ///Ordinal
        ///</summary>
        [DataField(Name = "Ordinal", IsKey = false, IsNullable = true, Length = 4)]
        public int Ordinal
        {
            get
            {
                return _Ordinal;
            }
            set
            {
                _Ordinal = value;
                OnFieldChanged("Ordinal");
            }
        }
        private int _Ordinal = 0;


        ///<summary>
        ///IsEnable是否启用    0 启用 1不启用
        ///</summary>
        [DataField(Name = "IsEnable", IsKey = false, IsNullable = true, Length = 1)]
        public bool IsEnable
        {
            get
            {
                return _IsEnable;
            }
            set
            {
                _IsEnable = value;
                OnFieldChanged("IsEnable");
            }
        }
        private bool _IsEnable = false;


        ///<summary>
        ///IsDeleted是否删除    0 是  1不是
        ///</summary>
        [DataField(Name = "IsDeleted", IsKey = false, IsNullable = true, Length = 1)]
        public bool IsDeleted
        {
            get
            {
                return _IsDeleted;
            }
            set
            {
                _IsDeleted = value;
                OnFieldChanged("IsDeleted");
            }
        }
        private bool _IsDeleted = false;


        ///<summary>
        ///CraetedBy创建人
        ///</summary>
        [DataField(Name = "CraetedBy", IsKey = false, IsNullable = true, Length = 40)]
        public string CraetedBy
        {
            get
            {
                return _CraetedBy;
            }
            set
            {
                _CraetedBy = value;
                OnFieldChanged("CraetedBy");
            }
        }
        private string _CraetedBy = "";


        ///<summary>
        ///CreatedTime
        ///</summary>
        [DataField(Name = "CreatedTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime CreatedTime
        {
            get
            {
                return _CreatedTime;
            }
            set
            {
                _CreatedTime = value;
                OnFieldChanged("CreatedTime");
            }
        }
        private DateTime _CreatedTime = DateTime.Parse("1900-1-1");


        ///<summary>
        ///LastupdateBy最后修改人
        ///</summary>
        [DataField(Name = "LastupdateBy", IsKey = false, IsNullable = true, Length = 40)]
        public string LastupdateBy
        {
            get
            {
                return _LastupdateBy;
            }
            set
            {
                _LastupdateBy = value;
                OnFieldChanged("LastupdateBy");
            }
        }
        private string _LastupdateBy = "";


        ///<summary>
        ///LastupdateTime最后修改时间
        ///</summary>
        [DataField(Name = "LastupdateTime", IsKey = false, IsNullable = true, Length = 8)]
        public DateTime LastupdateTime
        {
            get
            {
                return _LastupdateTime;
            }
            set
            {
                _LastupdateTime = value;
                OnFieldChanged("LastupdateTime");
            }
        }
        private DateTime _LastupdateTime = DateTime.Parse("1900-1-1");
        /// <summary>
        /// Depth当前级别
        /// </summary>
        [DataField(Name = "Depth", IsKey = false, IsNullable = true, Length = 4)]
        public int Depth
        {
            get
            {
                return _Depth;
            }
            set
            {
                _Depth = value;
                OnFieldChanged("Depth");
            }
        }
        private int _Depth = 0;
        #endregion
    }
}
