using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Core
{
    public interface IDao<TEntity> where TEntity:IEntity
    {
        /// <summary>
        /// 根据主键值获取对象
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        TEntity GetByKey(Object value);
        /// <summary>
        /// 根据ID获取对象
        /// </summary>
        /// <param name="id">ID值</param>
        /// <returns>具体制定的ID的对象</returns>
        TEntity GetById(Guid id);
        /// <summary>
        /// 根据ID获取对象
        /// </summary>
        /// <param name="ids">ID值列表</param>
        /// <returns>具体指定的ID的对象</returns>
        IList<TEntity> GetByIDs(string[] ids);
        /// <summary>
        /// 获取当前实体集合全部对象
        /// </summary>
        /// <returns></returns>
        IList<TEntity> GetAll();
        /// <summary>
        /// 获取某一页的对象
        /// </summary>
        /// <param name="pageId">页码</param>
        /// <param name="pageSize">每一页条数</param>
        /// <returns>当前页的数据对象</returns>
        PagedList<TEntity> GetPageList(int pageId,int pageSize);
        /// <summary>
        /// 添加实体对象
        /// </summary>
        /// <param name="entity">要添加的新实体</param>
        void Add(TEntity entity);
        /// <summary>
        /// 修改实体对象
        /// </summary>
        /// <param name="entity"></param>
        void Update(TEntity entity);
        /// <summary>
        /// 删除实体对象
        /// </summary>
        /// <param name="entity"></param>
        void Delete(TEntity entity);
        /// <summary>
        /// 根据id列表删除实体对象
        /// </summary>
        /// <param name="ids">要删除的实体的id列表</param>
        void Deletes(string[] ids);
        /// <summary>
        /// 计算表中总共数据条数
        /// </summary>
        int Count();
        /// <summary>
        /// 根据帅选条件获取单个对象
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        int Count(string where);

        /// <summary> 
        /// 是否事务执行 
        /// </summary> 
        bool IsTransaction
        {
            get;
        }
        /// <summary> 
        /// 开始事务 
        /// </summary> 
        void BeginTransaction();
        /// <summary> 
        /// 提交事务 
        /// </summary> 
        void Commit();
        /// <summary> 
        /// 回滚事务 
        /// </summary> 
        void Rollback();
    }
}
