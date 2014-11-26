using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Core.DBHelp
{
    public class Oracle : IDBAccessor
    {



        public int Excute()
        {
            throw new NotImplementedException();
        }

        public System.Data.DataTable Query()
        {
            throw new NotImplementedException();
        }

        public System.Data.DataTable GetDataTable(string sql)
        {
            throw new NotImplementedException();
        }

        public System.Data.DataTable GetDataTable(System.Data.CommandType commandType, string sql, System.Data.IDbDataParameter[] parArr)
        {
            throw new NotImplementedException();
        }

        public int GetExecuteNonQuery(string sql)
        {
            throw new NotImplementedException();
        }

        public int GetExecuteNonQuery(System.Data.CommandType commandType, string sql, System.Data.IDbDataParameter[] parArr)
        {
            throw new NotImplementedException();
        }

        public bool GetExecuteNonQuery(Dictionary<string, System.Data.IDbDataParameter[]> dd)
        {
            throw new NotImplementedException();
        }

        public object GetExecuteScalar(string sql, System.Data.IDbDataParameter[] parArr)
        {
            throw new NotImplementedException();
        }

        public object GetExecuteScalar(System.Data.CommandType commandType, string sql, System.Data.IDbDataParameter[] parArr)
        {
            throw new NotImplementedException();
        }

        public System.Data.IDbDataParameter NewParam(string name, object valu)
        {
            throw new NotImplementedException();
        }

        public System.Data.IDbDataParameter NewParam(string name, object valu, System.Data.DbType type, int len)
        {
            throw new NotImplementedException();
        }

        public System.Data.IDbDataParameter NewParam(string name, object valu, System.Data.DbType type, int len, bool output)
        {
            throw new NotImplementedException();
        }
    }
    
}
