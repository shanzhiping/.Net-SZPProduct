using System;
using System.Data;
using System.Data.OleDb;
using System.Web;
using System.Web.UI;
using System.Configuration;


namespace SZP.Core.DBHelp
{
    public class Access : IDBAccessor
    {
        //private string commandStr = string.Empty;       
        //private System.Data.SqlClient.SqlConnection sqlConnection = null;
        /// <summary>
        /// 存储数据库连接（保护类，只有由它派生的类才能访问）
        /// </summary>
        protected OleDbConnection Connection;

        public Access()
        {
            //connectionString = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            // sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
            Connection = ConnectionToAccess.GetConnection();
        }
        public Access(string connectionString)
        {
            ConnectionToAccess.connectionString = connectionString;
            Connection = ConnectionToAccess.GetConnection();
            // this.connectionString = connectionString;
            // sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
        }

        /// <summary>
        /// 创建数据库连接
        /// </summary>
        /// <returns></returns>
        public void GetConn()
        {
            if (Connection == null)
            {
                Connection = new OleDbConnection();
            }
        }
        /// <summary>
        /// 关闭数据库
        /// </summary>
        /// <param name="conn">连接对象</param>
        public void GetClose()
        {
            if (TransactionToAccess.transaction == null)
            {
                ConnectionToAccess.GetClose();
            }
        }
        public DataTable GetDataTable(string sql)
        {
            GetConn();
            DataTable dt = new DataTable("dt");               //创建数据表
            using (OleDbCommand com = Connection.CreateCommand())
            {     //创建执行对像
                com.CommandText = sql;                    //指定存取过程
                com.CommandType = CommandType.Text;
                StartTransaction(com);
                OleDbDataAdapter da = new OleDbDataAdapter(com);     //创建适配器
                da.Fill(dt);                                        //填充结果集
            }
            GetClose();
            return dt;                           //返回结果集
        }

        public DataTable GetDataTable(CommandType commandType, string sql, IDbDataParameter[] parArr)
        {
            DataTable dt = new DataTable();                 //创建结果集

            GetConn();
            using (OleDbCommand com = Connection.CreateCommand())
            {     //创建执行对像
                com.CommandText = sql;                    //指定存取过程
                com.CommandType = commandType;
                StartTransaction(com);
                if (parArr != null)                        //判断参数是否为空
                {
                    //不为空这是指定
                    com.Parameters.AddRange(parArr);           //加载参数
                }
                OleDbDataAdapter da = new OleDbDataAdapter(com);     //创建适配器

                da.Fill(dt);                                        //填充结果集
            }
            GetClose();
            return dt;                                   //返回结果集
        }

        public int GetExecuteNonQuery(string sql)
        {
            int num = 0;
            GetConn();
            using (OleDbCommand com = Connection.CreateCommand())
            {          //创建执行命令
                com.CommandText = sql;                          //创建要执行sql语句
                com.CommandType = CommandType.Text;
                StartTransaction(com);
                num = com.ExecuteNonQuery();                //执行sql语句
            }
            GetClose();
            return num;                                       //返回受影响的行
        }

        public int GetExecuteNonQuery(CommandType commandType, string sql, IDbDataParameter[] parArr)
        {
            int num = 0;
            GetConn();
            using (OleDbCommand com = Connection.CreateCommand())
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

        public bool GetExecuteNonQuery(System.Collections.Generic.Dictionary<string, IDbDataParameter[]> dd)
        {
            GetConn();
            using (OleDbCommand com = Connection.CreateCommand())
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

        public object GetExecuteScalar(string sql, IDbDataParameter[] parArr)
        {
            object obj;
            GetConn();
            using (OleDbCommand com = Connection.CreateCommand())
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

        public object GetExecuteScalar(CommandType commandType, string sql, IDbDataParameter[] parArr)
        {
            GetConn();
            using (OleDbCommand comm = Connection.CreateCommand())    //创建执行对像
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
        private static void StartTransaction(OleDbCommand comm)
        {
            if (TransactionToAccess.transaction != null)
            {
                comm.Transaction = TransactionToAccess.transaction;
            }
        }


        public IDbDataParameter NewParam(string name, object valu)
        {
            IDbDataParameter parameter = new OleDbParameter(name, valu);
            return parameter;
        }

        public IDbDataParameter NewParam(string name, object valu, DbType type, int len)
        {
            IDbDataParameter parameter = new OleDbParameter(name, valu);
            parameter.DbType = type;
            parameter.Size = len;
            return parameter;
        }

        public IDbDataParameter NewParam(string name, object valu, DbType type, int len, bool output)
        {
            IDbDataParameter parameter = new OleDbParameter(name, valu);
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
    public class ConnectionToAccess
    {
        public static string connectionString = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
        static OleDbConnection connection;
        /// <summary>
        /// 创建事务连接
        /// </summary>
        /// <returns></returns>
        public static OleDbConnection GetConnection()
        {
            if (connection == null || connection.State == System.Data.ConnectionState.Closed)
            {
                connection = new OleDbConnection(connectionString);
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
    public class TransactionToAccess : ITransaction
    {
        public static OleDbTransaction transaction;

        public bool IsTransaction
        {
            get
            {

                if (TransactionToAccess.transaction == null || TransactionToAccess.transaction.Connection == null)
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
            TransactionToAccess.transaction = ConnectionToAccess.GetConnection().BeginTransaction();
        }
        /// <summary>
        /// 提交事务
        /// </summary>
        public void Commit()
        {
            try
            {
                if (TransactionToAccess.transaction != null)
                {
                    TransactionToAccess.transaction.Commit();
                    TransactionToAccess.transaction = null;
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                ConnectionToAccess.GetClose();
            }
        }
        /// <summary>
        /// 回滚事务
        /// </summary>
        public void Rollback()
        {
            try
            {
                if (TransactionToAccess.transaction != null)
                {
                    TransactionToAccess.transaction.Rollback();
                    TransactionToAccess.transaction = null;
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                ConnectionToAccess.GetClose();
            }
        }
    }
}


