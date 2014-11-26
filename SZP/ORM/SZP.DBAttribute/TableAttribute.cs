using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.DBAttribute
{
    [AttributeUsage(AttributeTargets.All,AllowMultiple=false)]
    public class TableAttribute:Attribute
    {
        private string dbTableName;
        /// <summary>
        /// 表名
        /// </summary>
        public string DbTableName
        {
            get { return dbTableName; }
            set { dbTableName = value; }
        }
        public TableAttribute(string dbName)
        {
            this.dbTableName = dbName;
        }
    }
}
