using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using  SZP.Entity;

namespace SZP.Service
{
	public partial class SysOperationService
	{
        public Core.PagedList<SysOperation> GetPageList(int pageId, int pageSize, string parentId)
        {
            return Idao.GetPageList(pageId, pageSize, parentId);
        }
	}
	public partial interface ISysOperationService
	{
        /// <summary>
        /// 获取子节点
        /// </summary>
        /// <param name="pageId">当前页码</param>
        /// <param name="pageSize">当前条数</param>
        /// <param name="parentId">上级ID</param>
        /// <returns></returns>
        Core.PagedList<SysOperation> GetPageList(int pageId, int pageSize, string parentId);
	}
}
