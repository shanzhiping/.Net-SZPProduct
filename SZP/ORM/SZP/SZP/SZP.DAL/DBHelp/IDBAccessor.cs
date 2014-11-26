using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data ;
using System.Data.SqlClient;

namespace SZP.Core.DBHelp
{
    public interface IDBAccessor
    {
        ///// <summary> 
        ///// 执行Update,Delete,Insert语句方法 
        ///// </summary> 
        ///// <returns>返回影响的行数</returns> 
        //int Excute();

        ///// <summary> 
        ///// 执行查询方法 
        ///// </summary> 
        //DataTable Query();

        /// <summary>
        /// 查询通用方法
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns></returns>
        DataTable GetDataTable(string sql);

        /// <summary>
        /// 查询数据库的通用方法
        /// </summary>
        /// <param name="sql">指定要执行的存储过程</param>
        /// <param name="parArr">指定要传入的参数  
        /// 为空可以执行普通的查询语句   
        /// 不为空就执行存储过程</param>
        /// <returns></returns>
        DataTable GetDataTable(CommandType commandType, string sql, IDbDataParameter[] parArr);

        /// <summary>
        /// 创建数据库的添删改的通用方法
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        int GetExecuteNonQuery(string sql);
                /// <summary>
        /// 创建数据库的添删改的通用方法  
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        int GetExecuteNonQuery(CommandType commandType, string sql, IDbDataParameter[] parArr);
        /// <summary>
        /// 对数据进行 添 删 改操作  带sql参数的sql语句
        /// 自己定义带参数的添 删 改语句  和参数
        /// 循序是先 主表  后 从表
        /// </summary>
        /// <param name="dd">
        /// Hashtable的键(key)放入string型的sql语句 值(value) 
        /// 放入SqlParameter[] sql参数的数组 或 null 如果值(value)为null时
        /// 就执行键(key)中不带参数的sql语句
        /// </param>
        /// <returns></returns>
        bool GetExecuteNonQuery(Dictionary<string, IDbDataParameter[]> dd);

        /// <summary>
        /// 查询一行一列的结果集的公共方法  带sql参数
        /// 如果查询语句没有带参数 那SqlParameter[] 参数值可用null 
        /// 也可进行查询不带数的SQL语句 
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <param name="parArr">sql参数</param>
        /// <returns></returns>
        object GetExecuteScalar(string sql, IDbDataParameter[] parArr);

        /// <summary>
        /// 插入新数据后 得到该数据的编号id
        /// </summary>
        /// <param name="obj">传进来的类的对象</param>
        /// <returns></returns>
        object GetExecuteScalar(CommandType commandType, string sql, IDbDataParameter[] parArr);

        /// <summary>
        /// IDbDataParameter    参数设置
        /// </summary>
        /// <param name="name">DbDataParameter 名称</param>
        /// <param name="valu">DbDataParameter  值</param>
        /// <returns></returns>
        IDbDataParameter NewParam(string name, object valu);
                /// <summary>
        /// IDbDataParameter    参数设置
        /// </summary>
        /// <param name="name">DbDataParameter 名称</param>
        /// <param name="valu">DbDataParameter  值</param>
        /// <param name="type">DbDataParameter  类型</param>
        /// <param name="len">DbDataParameter  长度</param>
        /// <returns></returns>
        IDbDataParameter NewParam(string name, object valu, DbType type, int len);
                /// <summary>
        ///  IDbDataParameter    参数设置
        /// </summary>
        /// <param name="name">IDbDataParameter 名称</param>
        /// <param name="valu">IDbDataParameter 值</param>
        /// <param name="type">IDbDataParameter 类型</param>
        /// <param name="len">IDbDataParameter 长度</param>
        /// <param name="output">IDbDataParameter 是否为输出参赛</param>
        /// <returns></returns>
        IDbDataParameter NewParam(string name, object valu, DbType type, int len, bool output);

    }

    public interface ITransaction
    {

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
