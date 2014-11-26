using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace SZP.DBAttribute
{
    [AttributeUsage(AttributeTargets.All, AllowMultiple = false)]
    public class PropertyAttribute : Attribute
    {
        private string dbColumnName;
        /// <summary>
        /// 字段名称
        /// </summary>
        public string DbColumnName
        {
            get { return dbColumnName; }
            set { dbColumnName = value; }
        }
        private bool isPrimary;
        /// <summary>
        /// 是否为主键
        /// </summary>
        public bool IsPrimary
        {
            get { return isPrimary; }
            set { isPrimary = value; }
        }
        private DbType dbType;
        /// <summary>
        /// 字段类型
        /// </summary>
        public DbType DbType
        {
            get { return dbType; }
            set { dbType = value; }
        }
        private object defaultValue;
        /// <summary>
        /// 默认值
        /// </summary>
        public object DefaultValue
        {
            get { return defaultValue; }
            set { defaultValue = value; }
        }
        private bool isIdentity;
        /// <summary>
        /// 是否为自增
        /// </summary>
        public bool IsIdentity
        {
            get { return isIdentity; }
            set { isIdentity = value; }
        }
        private int length;
        /// <summary>
        /// 字段长度
        /// </summary>
        public int Length
        {
            get { return length; }
            set { length = value; }
        }


        public PropertyAttribute(string dbName, bool isPrimary, DbType dbType, object dValue)
        {
            this.dbColumnName = dbName;
            this.isPrimary = isPrimary;
            this.dbType = dbType;
            this.defaultValue = dValue;
        }

        private object GetDefaultValue()
        {
            return new object();
        }
        public PropertyAttribute(string dbName)
        {
            this.dbColumnName = dbName;
            this.isPrimary = false;
            this.dbType = DbType.String;
            this.defaultValue = this.GetDefaultValue();
        }
        public PropertyAttribute(string dbName, bool isPrimary)
        {
            this.dbColumnName = dbName;
            this.isPrimary = isPrimary;
            this.dbType = DbType.String;
            this.defaultValue = this.GetDefaultValue();
        }
        public PropertyAttribute(string dbName, bool isPrimery, DbType type)
        {

            this.dbColumnName = dbName;
            this.isPrimary = isPrimery;
            this.dbType = type;
            this.defaultValue = null;
        }
    }
}
