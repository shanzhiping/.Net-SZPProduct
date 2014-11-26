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
            return GetList(" IsDeleted ='0' ");
        }
        /// <summary>
        /// ��ѯ���еĲ˵�
        /// </summary>
        /// <param name="pageId"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public override Core.PagedList<SysMenu> GetPageList(int pageId, int pageSize)
        {
           // string sql = EntityUtitl.CreateSelectSql<SysMenu>("  [IsDeleted] =0 ");
            Core.PagedList<SysMenu> pageList = new PagedList<SysMenu>(pageId, pageSize, Count(), GetAll());

            return pageList;
            //return base.GetPageList(sql, pageId, pageSize, null);           
        }
        public override int Count()
        {
            return Count(" [IsDeleted] ='0' ");
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
            string sqlWhere = string.Format(" IsDeleted = '0' and (ParentId ='' or ParentId = '{0}' )", EntityUtitl.GuidType(Guid.Empty));
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

        private IList<SysMenu> GetChildrenMenuListAll(SysMenu parent,Guid userId,Guid ordId)
        {
            string sqlWhere = string.Format(" IsDeleted = '0' and  ParentId = '{0}' ", EntityUtitl.GuidType(parent.Id));
            IList<SysMenu> list = GetList(sqlWhere);
            foreach (SysMenu menu in list)
            {
                menu.Children = GetChildrenMenuListAll(menu, userId, ordId);
            }
            return list;
        }

        /// <summary>
        /// ͨ������ ��ѯ�Ӽ�
        /// </summary>
        /// <param name="pageId"></param>
        /// <param name="pageSize"></param>
        /// <param name="parentId"></param>
        /// <returns></returns>
        public Core.PagedList<SysMenu> GetPageList(int pageId, int pageSize,string parentId)
        {
            Guid parent = Guid.Empty;
            if (string.IsNullOrEmpty(parentId))
            {
               
                string sql2 = EntityUtitl.CreateSelectSql<SysMenu>(string.Format(" IsDeleted ='0' and (ParentId ='' or ParentId='{0}')", EntityUtitl.GuidType(parent)));
                IList<SysMenu> list1 = base.GetList(sql2);
                return new PagedList<SysMenu>(pageId, pageSize, Count(string.Format(" IsDeleted ='0' and (ParentId = '' or ParentId='{0}')", EntityUtitl.GuidType(parent))), list1);
                //return base.GetPageList(EntityUtitl.CreateSelectSql<SysMenu>("  IsDeleted =0 and (ParentId is null or ParentId='{00000000-0000-0000-0000-000000000000}')"), pageId, pageSize);
            }
            parent = new Guid(parentId);

            string sql = EntityUtitl.CreateSelectSql<SysMenu>(string.Format("  IsDeleted ='0' and ParentId='{0}'", EntityUtitl.GuidType(parent)));

            IList<SysMenu> list = base.GetList(sql);
            return new PagedList<SysMenu>(pageId, pageSize, Count(string.Format(" IsDeleted ='0' and ParentId='{0}' ", EntityUtitl.GuidType(parent))), list);
            //return base.GetPageList(sql, pageId, pageSize,parentId);
        }

        public string GetFullName(Guid parentId)
        {
            string sql = "";
            if (parentId.Equals(Guid.Empty))
            {
                sql = string.Format("select max([FullName]) from [SysMenu" + EntityUtitl.DBType + "] where IsDeleted = '0' and  (ParentId = '{0}' or ParentId ='') ", EntityUtitl.GuidType(parentId));
            }
            else
            {
                sql = string.Format("select max([FullName]) from [SysMenu" + EntityUtitl.DBType + "] where IsDeleted = '0' and  ParentId = '{0}' ", EntityUtitl.GuidType(parentId));
            }

            string obj = db.GetExecuteScalar(CommandType.Text, sql, null).ToString();
            if (string.IsNullOrEmpty(obj))
            {
                if (parentId.Equals(Guid.Empty))
                {
                    return "11";
                }
                else
                {
                    sql = string.Format("select [FullName] from [SysMenu" + EntityUtitl.DBType + "] where IsDeleted = '0' and Id = '{0}' ", EntityUtitl.GuidType(parentId));
                    string str = db.GetExecuteScalar(CommandType.Text, sql, null).ToString();
                    return str + "11";
                }
            }
            else
            {
                int full;
                int.TryParse(obj,out full);
                return (full + 1).ToString();
            }
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
        /// <summary>
        /// ��ȡ�µ�ȫ·��
        /// </summary>
        /// <param name="parentId"></param>
        /// <returns></returns>
        string GetFullName(Guid parentId);

	}
}
