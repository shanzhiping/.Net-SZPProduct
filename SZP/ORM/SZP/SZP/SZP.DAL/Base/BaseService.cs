using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Web;
using System.Reflection;
using System.ComponentModel;

namespace SZP.Core
{
    public abstract class BaseService<TEntity> : IService<TEntity>, IDisposable where TEntity : IEntity
    {
        /// <summary>
        /// 由实现类制定具体的dao
        /// </summary>
        protected abstract IDao<TEntity> EntityDao { get; }
        static ILogger logger = null;
        //当前组织机构ID
        private Guid organizationalId = Guid .Empty;
        public Guid OrganizationalId
        {
            get { return organizationalId; }
            set { organizationalId = value; }
        }
        //当前IP
        private string ip = "";

        public string Ip
        {
            get { return ip; }
            set { ip = value; }
        }
        /// <summary>
        /// 根据主键获取对象
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public TEntity GetByKey(object value)
        {
            return EntityDao.GetByKey(value);
        }
        /// <summary>
        /// 根据主键获取对象
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public TEntity GetByID(Guid id)
        {
            return EntityDao.GetById(id);
        }
        /// <summary>
        /// 根据主键批量获取对象集合
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        public IList<TEntity> GetByIDs(string[] ids)
        {
            return EntityDao.GetByIDs(ids);
        }
        /// <summary>
        /// 获取全部信息
        /// </summary>
        /// <returns></returns>
        public IList<TEntity> GetAll()
        {
            return EntityDao.GetAll();
        }
        /// <summary>
        /// 获取总条数
        /// </summary>
        /// <returns></returns>
        public int Count()
        {
            return EntityDao.Count();
        }
        /// <summary>
        ///根据条件获取总条数
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        public int Count(string where)
        {
            return EntityDao.Count(where);
        }
        /// <summary>
        /// 分页查询数据
        /// </summary>
        /// <param name="pageId"></param>
        /// <param name="pageSize"></param>
        /// <param name="dataList"></param>
        /// <returns></returns>
        public PagedList<TEntity> GetPagedList(int pageId, int pageSize, IList<TEntity> dataList)
        {

            int startIndex = (pageId - 1) * pageSize;
            List<TEntity> list = new List<TEntity>();
            if (dataList.Count > startIndex)
            {
                int count = pageSize;
                if (dataList.Count < startIndex + count)
                {
                    count = dataList.Count - startIndex;
                }
                for (int i = startIndex; i < startIndex + count; i++)
                {
                    list.Add(dataList[i]);
                }
            }
            PagedList<TEntity> pagedList = new PagedList<TEntity>(pageId, pageSize, dataList.Count, list);
            return pagedList;
        }
        /// <summary>
        /// 枫叶查询数据
        /// </summary>
        /// <param name="pageId"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public PagedList<TEntity> GetPagedList(int pageId, int pageSize)
        {
            return EntityDao.GetPageList(pageId, pageSize);
        }
        /// <summary>
        /// 添加对象
        /// </summary>
        /// <param name="entity"></param>
        public void Add(TEntity entity)
        {
            EntityDao.Add(entity);
            AddLog(LogOperation.Add, entity);
        }
        /// <summary>
        /// 修改对象
        /// </summary>
        /// <param name="entity"></param>
        public void Update(TEntity entity)
        {
            EntityDao.Update(entity);
            AddLog(LogOperation.Update, entity);
        }
        /// <summary>
        /// 删除对象
        /// </summary>
        /// <param name="entity"></param>
        public void Delete(TEntity entity)
        {
            EntityDao.Delete(entity);
            AddLog(LogOperation.Delete, entity);
            
        }
        /// <summary>
        /// 批量删除对象
        /// </summary>
        /// <param name="ids"></param>
        public void Deletes(string[] ids)
        {
            EntityDao.Deletes(ids);
            string objectName = "";
            Type entityType = typeof(TEntity);
            if (entityType.IsDefined(typeof(System.ComponentModel.DescriptionAttribute), false))
            {
                System.ComponentModel.DescriptionAttribute[] attris = (System.ComponentModel.DescriptionAttribute[])entityType.GetType().GetCustomAttributes(typeof(System.ComponentModel.DescriptionAttribute), false);
                objectName = attris[0].Description;
            }
            AddLog(LogOperation.Deletes, objectName, "编号：" + string.Join(",", ids));


        }


        #region 事务

        /// <summary>
        /// 是否开启事务
        /// </summary>
        public bool IsTransaction
        {
            get { return EntityDao.IsTransaction; }
        }
        /// <summary>
        /// 开启事务
        /// </summary>
        public void BeginTransaction()
        {
            EntityDao.BeginTransaction();
        }
        /// <summary>
        /// 提交事务
        /// </summary>
        public void Commit()
        {
            EntityDao.Commit();
        }
        /// <summary>
        /// 关闭事务
        /// </summary>
        public void Rollback()
        {
            EntityDao.Rollback();
        }

        #endregion


        #region  添加日志
        /// <summary>
        /// 添加日志
        /// </summary>
        /// <param name="operation">操作类型</param>
        /// <param name="entity">操作对象</param>
        protected void AddLog(LogOperation operation, TEntity entity)
        {
            AddLog(GetCurrentUserName(), operation, entity);
        }

        /// <summary>
        /// 添加日志
        /// </summary>
        /// <param name="operattion">操作类型</param>
        /// <param name="objectName">操作名称</param>
        /// <param name="description">操作描述</param>
        protected void AddLog(LogOperation operattion, string objectName, string description)
        {
            AddLog(GetCurrentUserName(), operattion, objectName, description);
        }
        /// <summary>
        /// 添加日志
        /// </summary>
        /// <param name="userName">操作用户</param>
        /// <param name="operation">操作类型</param>
        /// <param name="entity">操作对象</param>
        protected void AddLog(string userName, LogOperation operation, TEntity entity)
        {
            string objectName = "", description = "";
            if (entity != null)
            {
                if (entity.GetType().IsDefined(typeof(DescriptionAttribute), false))
                {
                    System.ComponentModel.DescriptionAttribute[] attris = (System.ComponentModel.DescriptionAttribute[])entity.GetType().GetCustomAttributes(typeof(System.ComponentModel.DescriptionAttribute), false);
                    objectName = attris[0].Description;
                    PropertyInfo propId = entity.GetType().GetProperty("Id");
                    PropertyInfo propName = entity.GetType().GetProperty("Name");
                    PropertyInfo propTitile = entity.GetType().GetProperty("Title");
                    if (propId != null)
                    {
                        description = "Id:" + propId.GetValue(entity, null).ToString();
                    }
                    if (propName != null)
                    {
                        description += ";Name：" + propName.GetValue(entity, null).ToString();
                    }
                    else
                    {
                        if (propTitile != null)
                        {
                            description += ";Title:" + propTitile.GetValue(entity, null).ToString();
                        }
                    }
                }
            }
            AddLog(userName, operation, objectName, description);
        }

        /// <summary>
        /// 添加日志
        /// </summary>
        /// <param name="userName">操作用户名</param>
        /// <param name="operation">操作类型对象</param>
        /// <param name="objectName">对象名称</param>
        /// <param name="description">操作描述</param>
        protected void AddLog(string userName, LogOperation operation, string objectName, string description)
        {
            if (string.IsNullOrEmpty(userName))
            {
                return;
            }
            ILogger log = GetLogger();
            if (log != null)
            {
                log.Log(userName, operation, objectName, description,organizationalId,Ip);
            }
        }

        /// <summary>
        /// 获取日志对象
        /// </summary>
        /// <returns></returns>
        ILogger GetLogger()
        {
            if (logger == null)
            {
                string loggerClass = "SZP.Service.SysLogService,SZP.Service", loggerAssembly = "";
                if (string.IsNullOrEmpty(ConfigurationManager.AppSettings["SysLogService"])==false )
                {
                    loggerClass = ConfigurationManager.AppSettings["SysLogService"];
                    if (loggerClass.IndexOf(",") > 0)
                    {
                        loggerAssembly = loggerClass.Substring(0, loggerClass.IndexOf(','));
                        loggerClass = loggerClass.Substring(loggerClass.IndexOf(',') + 1);
                    }
                }

                object loggerObj;
                if (loggerAssembly == "")
                {
                    loggerObj = Activator.CreateInstance(Type.GetType(loggerClass));
                    //loggerObj = Activator.CreateInstance(loggerAssembly, loggerClass).Unwrap();
                }
                else
                {
                    loggerObj = Activator.CreateInstance(loggerAssembly, loggerClass).Unwrap();
                }
                if (loggerObj is ILogger)
                {
                    logger = (ILogger)loggerObj;
                }
            }
            return logger;
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }

        string GetCurrentUserName()
        {
            string userName = "";
            if (HttpContext.Current != null && HttpContext.Current.Request.IsAuthenticated)
            {
                userName = HttpContext.Current.User.Identity.Name;        
            }
            return userName;
        }
        #endregion
    }
}
