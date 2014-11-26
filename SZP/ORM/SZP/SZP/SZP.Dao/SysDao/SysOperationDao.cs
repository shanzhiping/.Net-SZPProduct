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
            /// ��ȡ�ӽڵ�
            /// </summary>
            /// <param name="pageId">��ǰҳ��</param>
            /// <param name="pageSize">��ǰ����</param>
            /// <param name="parentId">�ϼ�ID</param>
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
