using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using  SZP.Entity;
using SZP.Core;


namespace SZP.Dao
{
	public partial class SysOperationDao
	{
         /// <summary>
            /// 获取子节点
            /// </summary>
            /// <param name="pageId">当前页码</param>
            /// <param name="pageSize">当前条数</param>
            /// <param name="parentId">上级ID</param>
            /// <returns></returns>
        public Core.PagedList<SysOperation> GetPageList(int pageId, int pageSize, string parentId)
        {
            if (string.IsNullOrEmpty(parentId))
            {
                return null;
            }
            Core.PagedList<SysOperation> pageList = new PagedList<SysOperation>(pageId, pageSize, Count(), GetList(string.Format(" MenuID='{0}' ", "{"+parentId.ToUpper().Trim()+"}")));
            
            return pageList;
           //string sql = EntityUtitl.CreateSelectSql<SysOperation>(" MenuID=@MenuID ");
           // return base.GetPageList(sql, pageId, pageSize, new Guid(parentId));
        }
	}
	public partial interface ISysOperationDao
	{
        Core.PagedList<SysOperation> GetPageList(int pageId, int pageSize, string parentId);
	}
}
