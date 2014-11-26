using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SZP.Core;
using SZP.Entity;
using SZP.Dao;


namespace SZP.Service
{
    public partial class SysOperationService : BaseService<SysOperation>, ISysOperationService
    {
        SysOperationDao dao;
        public SysOperationService()
            : this(new SysOperationDao())
        {
        }
        public SysOperationService(SysOperationDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysOperation> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysOperationDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysOperationService 
    {
    }
    public partial class SysGroupService : BaseService<SysGroup>, ISysGroupService
    {
        SysGroupDao dao;
        public SysGroupService()
            : this(new SysGroupDao())
        {
        }
        public SysGroupService(SysGroupDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysGroup> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysGroupDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysGroupService
    {
    }
    public partial class SysUserMenuService : BaseService<SysUserMenu>, ISysUserMenuService
    {
        SysUserMenuDao dao;
        public SysUserMenuService()
            : this(new SysUserMenuDao())
        {
        }
        public SysUserMenuService(SysUserMenuDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysUserMenu> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysUserMenuDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysUserMenuService
    {
    }
    public partial class SysGroupMenuService : BaseService<SysGroupMenu>, ISysGroupMenuService
    {
        SysGroupMenuDao dao;
        public SysGroupMenuService()
            : this(new SysGroupMenuDao())
        {
        }
        public SysGroupMenuService(SysGroupMenuDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysGroupMenu> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysGroupMenuDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysGroupMenuService
    {
    }
    public partial class SysLogService : BaseService<SysLog>, ISysLogService
    {
        SysLogDao dao;
        public SysLogService()
            : this(new SysLogDao())
        {
        }
        public SysLogService(SysLogDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysLog> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysLogDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysLogService
    {
    }
    public partial class SysOrganizationalService : BaseService<SysOrganizational>, ISysOrganizationalService
    {
        SysOrganizationalDao dao;
        public SysOrganizationalService()
            : this(new SysOrganizationalDao())
        {
        }
        public SysOrganizationalService(SysOrganizationalDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysOrganizational> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysOrganizationalDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysOrganizationalService
    {
    }
    public partial class SysDepartmentService : BaseService<SysDepartment>, ISysDepartmentService
    {
        SysDepartmentDao dao;
        public SysDepartmentService()
            : this(new SysDepartmentDao())
        {
        }
        public SysDepartmentService(SysDepartmentDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysDepartment> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysDepartmentDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysDepartmentService
    {
    }
    public partial class SysPositionService : BaseService<SysPosition>, ISysPositionService
    {
        SysPositionDao dao;
        public SysPositionService()
            : this(new SysPositionDao())
        {
        }
        public SysPositionService(SysPositionDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysPosition> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysPositionDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysPositionService
    {
    }
    public partial class SysEmployeesService : BaseService<SysEmployees>, ISysEmployeesService
    {
        SysEmployeesDao dao;
        public SysEmployeesService()
            : this(new SysEmployeesDao())
        {
        }
        public SysEmployeesService(SysEmployeesDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysEmployees> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysEmployeesDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysEmployeesService
    {
    }
    public partial class SysUserService : BaseService<SysUser>, ISysUserService
    {
        SysUserDao dao;
        public SysUserService()
            : this(new SysUserDao())
        {
        }
        public SysUserService(SysUserDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysUser> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysUserDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysUserService
    {
    }
    public partial class SysMenuService : BaseService<SysMenu>, ISysMenuService
    {
        SysMenuDao dao;
        public SysMenuService()
            : this(new SysMenuDao())
        {
        }
        public SysMenuService(SysMenuDao dao)
        {
            this.dao = dao;
        }
        protected override IDao<SysMenu> EntityDao
        {
            get { return this.dao; }
        }
        protected ISysMenuDao Idao
        {
            get
            {
                return dao;
            }
        }
    }
    public partial interface ISysMenuService
    {
    }
}
