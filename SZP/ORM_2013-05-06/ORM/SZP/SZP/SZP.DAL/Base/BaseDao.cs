using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Text.RegularExpressions;
using System.Reflection;


namespace SZP.Core
{
    public abstract class  BaseDao<TEntity> : IDao<TEntity> where TEntity :IEntity 
    {
        protected DBHelp.IDBAccessor db = null;
        protected DBHelp.ITransaction transaction = null;
        static DBHelp.DatabaseType dbType = DBHelp.DatabaseType.SqlServer;
        static string connectionString = null;
        /// <summary>
        /// 获取配置文件里面制定的数据库类型和连接字符串，注意参数名称
        /// </summary>
        static BaseDao()
        {
            int dataBaseType = 1;
            int.TryParse(ConfigurationManager.AppSettings["DBType"], out dataBaseType);
            if (dataBaseType == 0)
                dataBaseType = 1;

            dbType = (DBHelp.DatabaseType)dataBaseType;
            connectionString = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;

        }
        public BaseDao()
        {
            if (dbType == DBHelp.DatabaseType.SqlServer)
            {
                db = new DBHelp.SQLServer(connectionString);
                transaction = new DBHelp.Transaction();
            }
        }


        /// <summary>
        /// 通过主键获取 单个实体类
        /// </summary>
        /// <param name="id">主键  id</param>
        /// <returns></returns>
        public TEntity GetByKey(object key)
        {
            TEntity entity = Activator.CreateInstance<TEntity>();
            string sql = EntityUtitl.CreateSelectSql("WHERE" + entity.EntityKey + "=@" + entity.EntityKey, entity);
            DataTable dt = db.GetDataTable(CommandType.Text, sql, CreateParameters(sql, new object[] { key }));
            if (dt.Rows.Count == 1)
            {
                EntityUtitl.LoadEntity(entity, dt.Rows[0]);
                return entity;
            }
            else
            {
                return default(TEntity);
            }
        }
        /// <summary>
        /// 通过主键获取 单个实体类
        /// </summary>
        /// <param name="id">主键  id</param>
        /// <returns></returns>
        public TEntity GetById(Guid id)
        {
            TEntity entity = Activator.CreateInstance<TEntity>();
            string sql = EntityUtitl.CreateSelectSql("WHERE " + entity.EntityKey + "=@" + entity.EntityKey, entity);
            //string sql = EntityUtitl.CreateSelectSql("WHERE " + entity.EntityKey + "='" + id.ToString() + "'", entity);

            DataTable dt = db.GetDataTable(CommandType.Text, sql, CreateParameters(sql, new object[] { id }));
            if (dt.Rows.Count == 1)
            {
                EntityUtitl.LoadEntity(entity, dt.Rows[0]);
                return entity;
            }
            else
            {
                return default(TEntity);
            }
        }
        /// <summary>
        /// 批量 TEntity 获取数据
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        public IList<TEntity> GetByIDs(string[] ids)
        {
            TEntity entity = Activator.CreateInstance<TEntity>();
            string sql = EntityUtitl.CreateSelectSql("WHERE " + entity.EntityKey + " IN (" + string.Join(",", ids) + ")", entity);
            DataTable dt = db.GetDataTable(sql);
            return EntityUtitl.CreateEntities<TEntity>(dt);
        }

        /// <summary>
        /// 获取
        /// </summary>
        /// <returns></returns>
        public virtual IList<TEntity> GetAll()
        {
            return GetList("");
        }
        /// <summary>
        /// 分页查询当前 对象
        /// </summary>
        /// <param name="pageId"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public virtual PagedList<TEntity> GetPageList(int pageId, int pageSize)
        {
            string sql = EntityUtitl.CreateSelectSql<TEntity>("");
            //总条数
            string countSql = EntityUtitl.CreateCountSql(sql);
            int recordCount = 0;
            object count = db.GetExecuteScalar(countSql,null);
            if (count != null && count != DBNull.Value)
            {
                recordCount = int.Parse(count.ToString());
            }
            string pagedSql = EntityUtitl.CreatePagedSelectSql(sql, pageId, pageSize);
            DataTable dt = db.GetDataTable(pagedSql);
            return new PagedList<TEntity>(pageId, pageSize, recordCount, EntityUtitl.CreateEntities<TEntity>(dt));
        }
        /// <summary>
        /// 添加实体 并获取添加后的ID
        /// </summary>
        /// <param name="entity"></param>
        public virtual void Add(TEntity entity)
        {
            string sql = EntityUtitl.CreateInsertSql(entity);
            object result = db.GetExecuteScalar(CommandType.Text, sql, CreateParameters(entity, sql));
            if (result != null && result != DBNull.Value)
            {
                PropertyInfo property = entity.GetType().GetProperty(entity.EntityKey);
                if (property != null)
                {
                    property.SetValue(entity, int.Parse(result.ToString()), null);
                }
            }
        }
        /// <summary>
        /// 修改数据
        /// </summary>
        /// <param name="entity"></param>
        public virtual void Update(TEntity entity)
        {
            string sql = EntityUtitl.CreateUpdateSql(entity);
            Execute(sql, CreateParameters(entity, sql));
            entity.ResetState();
        }
        /// <summary>
        /// 删除数据
        /// </summary>
        /// <param name="entity"></param>
        public virtual void Delete(TEntity entity)
        {
            string sql = EntityUtitl.CreateDeleteSql(entity);
            Execute(sql, CreateParameters(entity, sql));
        }
        /// <summary>
        /// 批量删除数据
        /// </summary>
        /// <param name="ids"></param>
        public virtual void Deletes(string[] ids)
        {
            TEntity entity = Activator.CreateInstance<TEntity>();
            string sql = EntityUtitl.CreateDeleteSql(entity, ids);
            Execute(sql, CreateParameters(entity, sql));
        }




        /// <summary>
        /// 执行数据库命令
        /// </summary>
        /// <param name="sql">要执行的命令</param>
        /// <param name="parameters">参数集合</param>
        protected void Execute(string sql, params IDbDataParameter[] parameters)
        {
            db.GetExecuteNonQuery(CommandType.Text, sql, parameters);
        }
        /// <summary>
        /// 根据命令和参数值构造参数并执行数据库命令
        /// </summary>
        /// <param name="sql">要执行的命令</param>
        /// <param name="values">参数值集合</param>
        /// <returns>受影响的记录数</returns>
        protected void Execute(string sql, params object[] values)
        {
            db.GetExecuteNonQuery(CommandType.Text, sql, CreateParameters(sql, values));
        }

        /// <summary>
        /// 根据筛选条件获取对象集合
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        protected IList<TEntity> GetList(string sql, params object[] values)
        {
            sql = EntityUtitl.CreateSelectSql<TEntity>(sql);
            DataTable dt = db.GetDataTable(CommandType.Text, sql, CreateParameters(sql, values));
            return EntityUtitl.CreateEntities<TEntity>(dt);
        }
        /// <summary>
        /// 按条件计算表数据条数
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        public int Count(string where)
        {
            TEntity entity = Activator.CreateInstance<TEntity>();
            string sql = "SELECT COUNT(1) FROM " + entity.EntityKey;
            if (where != string.Empty && where.Length > 0)
            {
                sql += " WHERE " + where; 
            }

            return (int)db.GetExecuteScalar(sql, null);
        }
        /// <summary>
        /// 计算表总共数据条数
        /// </summary>
        /// <returns></returns>
        public virtual int Count()
        {
            return Count("");
        }
        /// <summary>
        /// 根据筛选条件获取单个对象
        /// </summary>
        /// <param name="sql">筛选条件（sql语句）</param>
        /// <param name="values">参数值集合</param>
        /// <returns>符合条件的单个对象</returns>
        protected TEntity GetSingle(string sql, params object[] values)
        {
            IList<TEntity> list = GetList(sql, values);
            if (list.Count > 0)
            {
                return list[0];
            }
            return default(TEntity);
        }


        protected PagedList<TEntity> GetPageList(string sql, int pageId, int pageSize, params object[] values)
        {
            sql = EntityUtitl.CreateSelectSql<TEntity>(sql);
            string countSql = EntityUtitl.CreateCountSql(sql);
            int recordCount = 0;
            object count = db.GetExecuteScalar(CommandType.Text, countSql, CreateParameters(sql, values));
            if (count != null && count != DBNull.Value)
            {
                recordCount = int.Parse(count.ToString());
            }

            string pagedSql = EntityUtitl.CreatePagedSelectSql(sql, pageId, pageSize);
            DataTable dt= db.GetDataTable(CommandType.Text, pagedSql, CreateParameters(sql, values));
            return new PagedList<TEntity>(pageId, pageSize, recordCount, EntityUtitl.CreateEntities<TEntity>(dt));
           // return null;
        }


        /// <summary>
        /// 根据实体对象和制定sql语句自动提取参数并根据属性设定值
        /// </summary>
        /// <param name="entity">当前实体</param>
        /// <param name="sql">sql语句</param>
        /// <returns></returns>
        public virtual IDbDataParameter[] CreateParameters(TEntity entity, string sql)
        {
            List<IDbDataParameter> list = new List<IDbDataParameter>();
            MatchCollection mc = Regex.Matches(sql, @"@\w+");
            foreach (Match m in mc)
            {
                object value = null;
                PropertyInfo prop = entity.GetType().GetProperty(m.Value.Substring(1));//通过反射读取实体类的属性
                IDbDataParameter parm = null;
                if (prop != null)
                {
                    value = prop.GetValue(entity, null);
                    parm = db.NewParam(m.Value, value);
                    list.Add(parm);
                }
                
            }
            return list.ToArray();
        }

        /// <summary>
        /// 根据参数值和指定sql语句生成参数列表
        /// </summary>
        /// <param name="sql">查询语句</param>
        /// <param name="values">参数列表</param>
        /// <returns></returns>
        protected virtual IDbDataParameter[] CreateParameters(string sql, object[] values)
        {
            if (values == null || values.Length == 0)
            {
                return null;
            }
            List<IDbDataParameter> list = new List<IDbDataParameter>();
            MatchCollection mc = Regex.Matches(sql, @"@\w+");
            int index = 0;
            foreach (Match m in mc)
            {
                object value = values[index++];
                IDbDataParameter parm = db.NewParam(m.Value, value);
                list.Add(parm);
            }
            return list.ToArray();
        }


        #region 事务

        /// <summary>
        /// 是否开启事务
        /// </summary>
        public bool IsTransaction
        {
            get { return transaction.IsTransaction; }
        }
        /// <summary>
        /// 开启事务
        /// </summary>
        public void BeginTransaction()
        {
            transaction.BeginTransaction();
        }
        /// <summary>
        /// 提交事务
        /// </summary>
        public void Commit()
        {
            transaction.Commit();
        }
        /// <summary>
        /// 回滚事务
        /// </summary>
        public void Rollback()
        {
            transaction.Rollback();
        }

        #endregion
    }
}
