using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

using System.Configuration;
using System.IO;

namespace SZP.Core.DBHelp
{
    public class SQLServer : IDBAccessor
    {
        //private string commandStr = string.Empty;       
        private System.Data.SqlClient.SqlConnection sqlConnection=null;
        

        public SQLServer()
        {
            //connectionString = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
           // sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
            sqlConnection = ConnectionToSql.GetConnection();
        }
        public SQLServer(string connectionString)
        {
            ConnectionToSql.connectionString = connectionString;
            sqlConnection = ConnectionToSql.GetConnection();
           // this.connectionString = connectionString;
           // sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
        }
        ///// <summary>
        ///// 执行操作
        ///// </summary>
        ///// <returns></returns>
        //public int Excute()
        //{
        //    if (sqlConnection.State != System.Data.ConnectionState.Open)
        //        sqlConnection.Open();
        //    try
        //    {
        //        using (System.Data.IDbCommand command = sqlConnection.CreateCommand())
        //        {
        //            command.CommandText = commandStr;
        //            return command.ExecuteNonQuery();
        //        }
        //    }
        //    catch (System.Exception)
        //    {
        //        return -1;
        //        throw;
        //    }
        //    finally
        //    {
        //        if (sqlConnection.State != System.Data.ConnectionState.Closed)
        //            sqlConnection.Close();
        //    }
        //}
        ///// <summary>
        ///// 查询操作
        ///// </summary>
        ///// <returns></returns>
        //public DataTable Query()
        //{
        //    if (sqlConnection.State != System.Data.ConnectionState.Open)
        //        sqlConnection.Open();
        //    try
        //    {
        //        DataSet ds = new DataSet();
        //        System.Data.IDbDataAdapter dataAdapter = new System.Data.SqlClient.SqlDataAdapter(commandStr, (SqlConnection)sqlConnection);
        //        dataAdapter.Fill(ds);
        //        return ds.Tables[0];

        //    }
        //    catch (Exception)
        //    {

        //        return null;
        //    }
        //    finally
        //    {
        //        if (sqlConnection.State != System.Data.ConnectionState.Closed)
        //            sqlConnection.Close();
        //    }

        //}








        /// <summary>
        /// 创建数据库连接
        /// </summary>
        /// <returns></returns>
        public void GetConn()
        {
            sqlConnection = ConnectionToSql.GetConnection();
            if (sqlConnection.State == ConnectionState.Closed)
            {
                sqlConnection.Open();
            }
        }
        /// <summary>
        /// 关闭数据库
        /// </summary>
        /// <param name="conn">连接对象</param>
        public void GetClose()
        {
            if (TransactionToSql.transaction == null)
            {
                ConnectionToSql.GetClose();
            }
        }
        /// <summary>
        /// 查询通用方法
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns></returns>
        public DataTable GetDataTable(string sql)
        {
            GetConn();
            DataTable dt = new DataTable("dt");               //创建数据表
            using (SqlCommand com = sqlConnection.CreateCommand())
            {     //创建执行对像
                com.CommandText = sql;                    //指定存取过程
                com.CommandType = CommandType.Text;
                StartTransaction(com);
                SqlDataAdapter da = new SqlDataAdapter(com);     //创建适配器
                da.Fill(dt);                                        //填充结果集
            }
            GetClose();
            return dt;                           //返回结果集
        }

        /// <summary>
        /// 查询数据库的通用方法
        /// </summary>
        /// <param name="sql">指定要执行的存储过程</param>
        /// <param name="parArr">指定要传入的参数  
        /// 为空可以执行普通的查询语句   
        /// 不为空就执行存储过程</param>
        /// <returns></returns>
        public DataTable GetDataTable(CommandType commandType, string sql, IDbDataParameter[] parArr)
        {
            DataTable dt = new DataTable();                 //创建结果集

            GetConn();
            using (SqlCommand com = sqlConnection.CreateCommand())
            {     //创建执行对像
                com.CommandText = sql;                    //指定存取过程
                com.CommandType = commandType;
                StartTransaction(com);
                if (parArr != null)                        //判断参数是否为空
                {
                    //不为空这是指定
                    com.Parameters.AddRange(parArr);           //加载参数
                }
                SqlDataAdapter da = new SqlDataAdapter(com);     //创建适配器

                da.Fill(dt);                                        //填充结果集
            }
            GetClose();
            return dt;                                   //返回结果集
        }
        /// <summary>
        /// 创建数据库的添删改的通用方法
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public int GetExecuteNonQuery(string sql)
        {
            int num = 0;
            GetConn();
            using (SqlCommand com = sqlConnection.CreateCommand())
            {          //创建执行命令
                com.CommandText = sql;                          //创建要执行sql语句
                com.CommandType = CommandType.Text;
                StartTransaction(com);
                num = com.ExecuteNonQuery();                //执行sql语句
            }
            GetClose();
            return num;                                       //返回受影响的行
        }
        /// <summary>
        /// 创建数据库的添删改的通用方法  
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public int GetExecuteNonQuery(CommandType commandType, string sql, IDbDataParameter[] parArr)
        {
            int num = 0;
            GetConn();
            using (SqlCommand com = sqlConnection.CreateCommand())
            {          //创建执行命令
                com.CommandText = sql;                          //创建要执行sql语句
                com.CommandType = commandType;
                StartTransaction(com);
                if (parArr is IDbDataParameter[])
                {
                    com.Parameters.AddRange(parArr);                         //添加sql参数
                }
                num = com.ExecuteNonQuery();                //执行sql语句
            }
            GetClose();
            return num;                                       //返回受影响的行
        }
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
        public bool GetExecuteNonQuery(Dictionary<string, IDbDataParameter[]> dd)
        {
            GetConn();
            using (SqlCommand com = sqlConnection.CreateCommand())
            {          //创建命令
                com.CommandType = CommandType.Text;
                StartTransaction(com);
                try
                {
                    foreach (string str in dd.Keys)            //遍历Dictionary的键   也就是sql语句
                    {
                        com.CommandText = str;                  //指定查询的sql语句
                        if (dd[str] != null)                     //判断参数是否为空    如果不为空就加载
                        {
                            if (dd[str] is IDbDataParameter[])
                            {
                                com.Parameters.AddRange(dd[str]);                         //添加sql参数
                            }
                        }
                        com.ExecuteNonQuery();                  //执行sql语句
                    }
                    return true;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
                finally
                {
                    GetClose();
                }
            }
        }
        /// <summary>
        /// 查询一行一列的结果集的公共方法  带sql参数
        /// 如果查询语句没有带参数 那SqlParameter[] 参数值可用null 
        /// 也可进行查询不带数的SQL语句 
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <param name="parArr">sql参数</param>
        /// <returns></returns>
        public object GetExecuteScalar(string sql, IDbDataParameter[] parArr)
        {
            object obj;
            GetConn();
            using (SqlCommand com = sqlConnection.CreateCommand())
            {        //创建执行对象
                com.CommandType = CommandType.Text;
                com.CommandText = sql;                             //设置执行的sql语句
                StartTransaction(com);
                if (parArr != null)                             //判断sql是否为空
                {
                    com.Parameters.AddRange(parArr);            //添加sql参数
                }
                obj = com.ExecuteScalar();
                
            }
            GetClose();
            return obj;                      //返回表

        }
        /// <summary>
        /// 插入新数据后 得到该数据的编号id
        /// </summary>
        /// <param name="obj">传进来的类的对象</param>
        /// <returns></returns>
        public object GetExecuteScalar(CommandType commandType, string sql, IDbDataParameter[] parArr)
        {
            GetConn();
            using (SqlCommand comm = sqlConnection.CreateCommand())    //创建执行对像
            {
                StartTransaction(comm);
                comm.CommandType = commandType;
                try
                {
                    comm.CommandText = sql;        //执行对象 添加
                    if (parArr != null)                             //判断sql是否为空
                    {
                        comm.Parameters.AddRange(parArr);            //添加sql参数
                    }
                    object i = comm.ExecuteScalar();                     //添加后 返回受影响的行的编号
                    return i;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
                finally
                {
                    GetClose();
                }

            }
        }
        /// <summary>
        /// 判断是否开启事务
        /// </summary>
        /// <param name="comm"></param>
        private static void StartTransaction(SqlCommand comm)
        {
            if (TransactionToSql.transaction != null)
            {
                comm.Transaction = TransactionToSql.transaction;
            }
        }





        /// <summary>
        /// IDbDataParameter    参数设置
        /// </summary>
        /// <param name="name">DbDataParameter 名称</param>
        /// <param name="valu">DbDataParameter  值</param>
        /// <returns></returns>
        public IDbDataParameter NewParam(string name, object valu)
        {
            IDbDataParameter parameter = new SqlParameter(name,valu);
            return parameter;

        }

        /// <summary>
        /// IDbDataParameter    参数设置
        /// </summary>
        /// <param name="name">DbDataParameter 名称</param>
        /// <param name="valu">DbDataParameter  值</param>
        /// <param name="type">DbDataParameter  类型</param>
        /// <param name="len">DbDataParameter  长度</param>
        /// <returns></returns>
        public IDbDataParameter NewParam(string name, object valu, DbType type, int len)
        {
            IDbDataParameter parameter = new SqlParameter(name, valu);
            parameter.DbType = type;
            parameter.Size = len;
            return parameter;
        }
        

        /// <summary>
        ///  IDbDataParameter    参数设置
        /// </summary>
        /// <param name="name">IDbDataParameter 名称</param>
        /// <param name="valu">IDbDataParameter 值</param>
        /// <param name="type">IDbDataParameter 类型</param>
        /// <param name="len">IDbDataParameter 长度</param>
        /// <param name="output">IDbDataParameter 是否为输出参赛</param>
        /// <returns></returns>
        public IDbDataParameter NewParam(string name, object valu, DbType type, int len, bool output)
        {
            IDbDataParameter parameter = new SqlParameter(name, valu);
            parameter.DbType = type;
            parameter.Size = len;
            if (output)
                parameter.Direction = ParameterDirection.Output;

            return parameter;
        }
    }
    /// <summary>
    /// 数据库连接类
    /// </summary>
    public class ConnectionToSql
    {
        public static string connectionString =  ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
        static SqlConnection connection;
        /// <summary>
        /// 创建事务连接
        /// </summary>
        /// <returns></returns>
        public static SqlConnection GetConnection()
        {
            if (connection == null || connection.State == System.Data.ConnectionState.Closed)
            {
                connection = new SqlConnection(connectionString);
                connection.Open();   //打开数据库连接
                return connection;    //返回连接对象
            }
            else
            {
                return connection;
            }
        }
        /// <summary>
        /// 关闭事务连接
        /// </summary>
        public static void GetClose()
        {
            if (connection.State != System.Data.ConnectionState.Closed)
            {           //判断连接是否处于关闭状态
                connection.Close();   //关闭连接对象                
            }
            connection = null;
        }
    }
    /// <summary>
    /// 事务设置类
    /// </summary>
    public class TransactionToSql : ITransaction
    {
        public static SqlTransaction transaction;

        public bool IsTransaction
        {
            get {

                if (TransactionToSql.transaction == null || TransactionToSql.transaction.Connection == null)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
        }
        /// <summary>
        /// 开启事务
        /// </summary>
        public void BeginTransaction()
        {
            TransactionToSql.transaction = ConnectionToSql.GetConnection().BeginTransaction();
        }
        /// <summary>
        /// 提交事务
        /// </summary>
        public void Commit()
        {
            try
            {
                if (TransactionToSql.transaction != null)
                {
                    TransactionToSql.transaction.Commit();
                    TransactionToSql.transaction = null;
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                ConnectionToSql.GetClose(); 
            }
        }
        /// <summary>
        /// 回滚事务
        /// </summary>
        public void Rollback()
        {
            try
            {
                if (TransactionToSql.transaction != null)
                {
                    TransactionToSql.transaction.Rollback();
                    TransactionToSql.transaction = null;
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                ConnectionToSql.GetClose();
            }
        }
    }
}
