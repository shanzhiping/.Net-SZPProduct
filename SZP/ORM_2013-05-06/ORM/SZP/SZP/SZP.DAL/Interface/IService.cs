using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Core
{
    /// <summary>
    /// 数据服务借口
    /// </summary>
    public interface IService<TEntity> where TEntity:IEntity
    {
        /// <summary>
        /// 根据主键值获取对象
        /// </summary>
        /// <param name="value">主键值</param>
        /// <returns>具体制定主键值的对象</returns>
        TEntity GetByKey(object value);
        /// <summary>
        /// 根据ID获取对象
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        TEntity GetByID(Guid id);
        /// <summary>
        /// 根据IDs 获取对象
        /// </summary>
        /// <param name="ids">ID值列表</param>
        /// <returns>具体指定ID的对象</returns>
        IList<TEntity> GetByIDs(string[] ids);

        /// <summary>
        /// 从制定集合中获取一页数据，返回新集合
        /// </summary>
        /// <param name="pageId">当前页码</param>
        /// <param name="pageSize">每页条数</param>
        /// <param name="List">远集合</param>
        /// <returns>制定页码的数据集合</returns>
        PagedList<TEntity> GetPagedList(int pageId, int pageSize, IList<TEntity> List);
        /// <summary>
        /// 获取一页数据，返回当前对象集合
        /// </summary>
        /// <param name="pageId">当前页码</param>
        /// <param name="pageSize">每页条数</param>
        /// <returns>制定页码的数据集合</returns>
        PagedList<TEntity> GetPagedList(int pageId, int pageSize);
        /// <summary>
        /// 添加实体对象
        /// </summary>
        /// <param name="entity"></param>
        void Add(TEntity entity);

        /// <summary>
        /// 修改实体对象
        /// </summary>
        /// <param name="entity">当前修改的实体</param>
        void Update(TEntity entity);
        /// <summary>
        /// 删除实体对象
        /// </summary>
        /// <param name="entity">要删除的实体</param>
        void Delete(TEntity entity);
        /// <summary>
        /// 根据id列表删除实体对象
        /// </summary>
        /// <param name="ids">要删除的实体的id列表</param>
        void Deletes(string[] ids);

    }
}
