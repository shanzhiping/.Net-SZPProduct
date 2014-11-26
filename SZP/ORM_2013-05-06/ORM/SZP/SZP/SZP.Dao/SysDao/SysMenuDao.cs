using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using  SZP.Entity;
using SZP.Core;
using System.Data;


namespace SZP.Dao
{
	public partial class SysMenuDao
	{
        public override IList<SysMenu> GetAll()
       {
            return GetList(" IsDeleted =0 ");
        }
        public override Core.PagedList<SysMenu> GetPageList(int pageId, int pageSize)
        {
            string sql = EntityUtitl.CreateSelectSql<SysMenu>("  IsDeleted =0 ");
            //������
            string countSql = EntityUtitl.CreateCountSql(sql);
            int recordCount = 0;
            object count = db.GetExecuteScalar(countSql, null);
            if (count != null && count != DBNull.Value)
            {
                recordCount = int.Parse(count.ToString());
            }
            string pagedSql = EntityUtitl.CreatePagedSelectSql(sql, pageId, pageSize);
            DataTable dt = db.GetDataTable(pagedSql);
            return new PagedList<SysMenu>(pageId, pageSize, recordCount, EntityUtitl.CreateEntities<SysMenu>(dt));
        }
        public override int Count()
        {
            return Count(" IsDeleted =0 ");
        }
        /// <summary>
        /// ���ص�ǰ�˵�
        /// </summary>
        /// <param name="userId">��ǰ�����û�</param>
        /// <param name="ordId">��ǰ��֯�ṹ</param>
        /// <returns></returns>
        public IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId)
        {
            return GetTopMenuListAll(userId, ordId, false);
        }
        /// <summary>
        /// ���ص�ǰ�˵�
        /// </summary>
        /// <param name="userId">��ǰ�����û�</param>
        /// <param name="ordId">��ǰ��֯�ṹ</param>
        /// <param name="isChildren">�Ƿ�����¼�</param>
        /// <returns></returns>
        public IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId, bool isChildren)
        {
            string sqlWhere=" IsDeleted = 0 and (ParentId is null or ParentId = '"+Guid .Empty+"' )";
            IList<SysMenu> list = GetList(sqlWhere);
            if (isChildren)
            {
                foreach (SysMenu menu in list)
                {
                    menu.Children = GetChildrenMenuListAll(menu, userId, ordId);
                }
            }            
            return list;
        }

        private IList<SysMenu> GetChildrenMenuListAll(SysMenu prent,Guid userId,Guid ordId)
        {            
            string sqlWhere = string.Format(" IsDeleted = 0 and  ParentId = '{0}' ", prent.Id);
            IList<SysMenu> list = GetList(sqlWhere);
            foreach (SysMenu menu in list)
            {
                menu.Children = GetChildrenMenuListAll(menu, userId, ordId);
            }
            return list;
        }


        public Core.PagedList<SysMenu> GetPageList(int pageId, int pageSize,string parentId)
        {
            if (string.IsNullOrEmpty(parentId))
            {
                return base.GetPageList(EntityUtitl.CreateSelectSql<SysMenu>("  IsDeleted =0 and (ParentId is null or ParentId='00000000-0000-0000-0000-000000000000')"), pageId, pageSize);
            }

            string sql = EntityUtitl.CreateSelectSql<SysMenu>("  IsDeleted =0 and ParentId=@ParentId");
            //������
            //string countSql = EntityUtitl.CreateCountSql(sql);
            //int recordCount = 0;
            //object count = db.GetExecuteScalar(countSql, null);
            //if (count != null && count != DBNull.Value)
            //{
            //    recordCount = int.Parse(count.ToString());
            //}
            //string pagedSql = EntityUtitl.CreatePagedSelectSql(sql, pageId, pageSize);
            return base.GetPageList(sql, pageId, pageSize,parentId);
           // return new PagedList<SysMenu>(pageId, pageSize, recordCount, EntityUtitl.CreateEntities<SysMenu>(dt));
        }
	}
	public partial interface ISysMenuDao
	{
        /// <summary>
        /// ���ص�ǰ�˵�
        /// </summary>
        /// <param name="userId">��ǰ�����û�</param>
        /// <param name="ordId">��ǰ��֯�ṹ</param>
        /// <param name="isChildren">�Ƿ�����¼�</param>
        /// <returns></returns>
        IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId, bool isChildren);
         /// <summary>
        /// ���ص�ǰ�˵�
        /// </summary>
        /// <param name="userId">��ǰ�����û�</param>
        /// <param name="ordId">��ǰ��֯�ṹ</param>
        /// <returns></returns>
        IList<SysMenu> GetTopMenuListAll(Guid userId, Guid ordId);
        /// <summary>
        /// ��ȡ�ӽڵ�
        /// </summary>
        /// <param name="pageId"></param>
        /// <param name="pageSize"></param>
        /// <param name="parentId"></param>
        /// <returns></returns>
        Core.PagedList<SysMenu> GetPageList(int pageId, int pageSize, string parentId);

	}
}
