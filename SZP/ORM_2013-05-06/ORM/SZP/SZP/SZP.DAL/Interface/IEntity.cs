using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Core
{
    public interface IEntity
    {
        /// <summary>
        /// 状态
        /// </summary>
        ObjectState State { get; set; }
        /// <summary>
        /// 主键
        /// </summary>
        string EntityKey { get; }

        /// <summary>
        /// 集名称（表名）
        /// </summary>
        string EntitySetName { get; }
        /// <summary>
        /// 获取更改过的列名
        /// </summary>
        /// <returns></returns>
        List<string> GetChangeFields();
        /// <summary>
        /// 重置状态
        /// </summary>
        void ResetState();
        
    }

    public enum ObjectState
    {
        Unchanged,
        Added,
        Deleted,
        Modified,
    }

    /// <summary>
    /// 数据列属性类
    /// </summary>
    public sealed class DataFieldAttribute : Attribute
    {
        public DataFieldAttribute()
        {
        }

        /// <summary>
        /// 是否允许空
        /// </summary>
        public bool IsNullable { get; set; }

        /// <summary>
        /// 是否是主键
        /// </summary>
        public bool IsKey { get; set; }

        /// <summary>
        /// 列名(字段名)
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 数据库字段类型
        /// </summary>
        public string DataType { get; set; }

        /// <summary>
        /// 数据长度
        /// </summary>
        public int Length { get; set; }
        /// <summary>
        /// 默认值
        /// </summary>
        public object DefaultValue
        {
            get;
            set;
        }
    }

    public sealed class TableAttribute : Attribute
    {
        public string DbTableName
        {
            get;
            set;
        }
    }
}
