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
	}
	public partial interface ISysMenuService
	{
        /// <summary>
        /// ���ص�ǰ�˵�
        /// </summary>
        /// <param name="userId">��ǰ�����û�</param>
        /// <param name="ordId">��ǰ��֯�ṹ</param>
        /// <returns></returns>
        IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId);
        /// <summary>
        /// ���ص�ǰ�˵�
        /// </summary>
        /// <param name="userId">��ǰ�����û�</param>
        /// <param name="ordId">��ǰ��֯�ṹ</param>
        /// <param name="isChildren">�Ƿ�����¼�</param>
        /// <returns></returns>
        IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId, bool isChildren);
        /// <summary>
        /// ��ȡ�ӽڵ�
        /// </summary>
        /// <param name="pageId">��ǰҳ��</param>
        /// <param name="pageSize">��ǰ����</param>
        /// <param name="parentId">�ϼ�ID</param>
        /// <returns></returns>
        Core.PagedList<SysMenu> GetPageList(int pageId, int pageSize, string parentId);
	}
}
