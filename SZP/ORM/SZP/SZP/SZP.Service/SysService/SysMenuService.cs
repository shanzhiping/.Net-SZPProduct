using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using  SZP.Entity;


namespace SZP.Service
{
	public partial class SysMenuService
	{
        public IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId)
        {
            return Idao.GetTopMenuListAll(userId, ordId);
        }
        public IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId, bool isChildren)
        {
            return Idao.GetTopMenuListAll(userId, ordId, isChildren);
        }

        public Core.PagedList<SysMenu> GetPageList(int pageId, int pageSize, string parentId)
        {
            return Idao.GetPageList(pageId, pageSize, parentId);
        }
        public string GetFullName(Guid parentId)
        {
            return Idao.GetFullName(parentId);
        }
	}
	public partial interface ISysMenuService
	{
        /// <summary>
        /// 加载当前菜单
        /// </summary>
        /// <param name="userId">当前登入用户</param>
        /// <param name="ordId">当前组织结构</param>
        /// <returns></returns>
        IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId);
        /// <summary>
        /// 加载当前菜单
        /// </summary>
        /// <param name="userId">当前登入用户</param>
        /// <param name="ordId">当前组织结构</param>
        /// <param name="isChildren">是否加载下级</param>
        /// <returns></returns>
        IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId, bool isChildren);
        /// <summary>
        /// 获取子节点
        /// </summary>
        /// <param name="pageId">当前页码</param>
        /// <param name="pageSize">当前条数</param>
        /// <param name="parentId">上级ID</param>
        /// <returns></returns>
        Core.PagedList<SysMenu> GetPageList(int pageId, int pageSize, string parentId);
        /// <summary>
        /// 获取新的全路径
        /// </summary>
        /// <param name="parentId"></param>
        /// <returns></returns>
        string GetFullName(Guid parentId);
	}
}
