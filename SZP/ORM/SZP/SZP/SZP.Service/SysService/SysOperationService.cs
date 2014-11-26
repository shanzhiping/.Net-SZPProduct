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
        /// ��ȡ�ӽڵ�
        /// </summary>
        /// <param name="pageId">��ǰҳ��</param>
        /// <param name="pageSize">��ǰ����</param>
        /// <param name="parentId">�ϼ�ID</param>
        /// <returns></returns>
        Core.PagedList<SysOperation> GetPageList(int pageId, int pageSize, string parentId);
	}
}
