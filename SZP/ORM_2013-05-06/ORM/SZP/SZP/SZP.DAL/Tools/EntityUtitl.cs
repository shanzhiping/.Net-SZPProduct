using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Reflection;
using System.Text.RegularExpressions;

namespace SZP.Core
{
    public class EntityUtitl
    {
        /// <summary>
        /// 从DataTable构造实体集合
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="table"></param>
        /// <returns></returns>
        public static List<TEntity> CreateEntities<TEntity>(DataTable table) where TEntity : IEntity
        {
            List<TEntity> list = new List<TEntity>(table.Rows.Count);
            foreach (DataRow row in table.Rows)
            {
                list.Add(CreateEntities<TEntity>(row));
            }
            return list;
        }
        /// <summary>
        /// 通过反射从DataRow构造制定类型的对象
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="row"></param>
        /// <returns></returns>
        public static TEntity CreateEntities<TEntity>(DataRow row) where TEntity : IEntity
        {
            TEntity entity = Activator.CreateInstance<TEntity>();
            LoadEntity(entity, row);
            return entity;
        }
        /// <summary>
        /// 同过反射从DataRow的数据对Entity进行赋值
        /// </summary>
        /// <param name="entity">实体对象</param>
        /// <param name="row">数据行</param>
        public static void LoadEntity(IEntity entity, DataRow row)
        {
            /*//方案1：以实体属性为主体，寻找DataRow里面的字段并赋值
            PropertyInfo[] properties = entity.GetType().GetProperties();
            foreach (PropertyInfo property in properties)
            {
                if (property.IsDefined(typeof(DataFieldAttribute), false))
                {
                    DataFieldAttribute[] attrs = (DataFieldAttribute[])property.GetCustomAttributes(typeof(DataFieldAttribute), false);
                    string fieldName = attrs[0].Name;
                    if (fieldName != null && row.Table.Columns.Contains(fieldName) && row[fieldName] != DBNull.Value)
                    {
                        property.SetValue(entity, Convert.ChangeType(row[fieldName], property.PropertyType), null);
                    }
                }
            }*/
            foreach (DataColumn col in row.Table.Columns)
            {
                if (row[col] != DBNull.Value)
                {
                    SetPropertyValue(entity, col.ColumnName, row[col]);
                }
            }

            entity.ResetState();
        }
        /// <summary>
        /// 给属性赋值,可级联
        /// </summary>
        /// <param name="entity">需要赋值的实体</param>
        /// <param name="propertyName">属性名称</param>
        /// <param name="value">值</param>
        static void SetPropertyValue(object entity, string propertyName, object value)
        {
            PropertyInfo property = entity.GetType().GetProperty(propertyName, BindingFlags.IgnoreCase | BindingFlags.Instance | BindingFlags.Public);
            if (property != null)
            {
                property.SetValue(entity, Convert.ChangeType(value, property.PropertyType),null);
            }
            else
            {
                if (propertyName.IndexOf(".") > 0)
                {
                    PropertyInfo proObj = entity.GetType().GetProperty(propertyName.Substring(0, propertyName.IndexOf(".")));
                    if (proObj != null)
                    {
                        object proObjValue = proObj.GetValue(entity, null);
                        if (proObjValue == null)
                        {
                            Type proObjType = proObj.PropertyType;
                            proObjValue = Activator.CreateInstance(proObjType);
                            proObj.SetValue(entity, proObjValue, null);
                        }
                        SetPropertyValue(proObjValue, propertyName.Substring(propertyName.IndexOf(".") + 1), value);
                    }
                }
            }
        }
        public static string GetFieldNames<TEntity>() where TEntity : IEntity
        {
            TEntity entity = Activator.CreateInstance<TEntity>();
            return GetFieldNames(entity);
        }
        /// <summary>
        /// 获取实体的数据列名列表
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public static string GetFieldNames(IEntity entity)
        {
            string fieldNames = "";
            //获取当前实体类中的所有的属性
            PropertyInfo[] properties = entity.GetType().GetProperties();
            foreach (PropertyInfo property in properties)
            {
                if (property.IsDefined(typeof(DataFieldAttribute), false))
                {
                    //获取属性上的所有的特性信息
                    DataFieldAttribute[] attrs = (DataFieldAttribute[])property.GetCustomAttributes(typeof(DataFieldAttribute), false);
                    fieldNames += attrs[0].Name + ",";                
                }
            }
            return fieldNames.Remove(fieldNames.Length - 1, 1);

        }

        /// <summary>
        /// 创建Select语句对未指定Select的SQL语句字段查询当前表
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static string CreateSelectSql<TEntity>(string sql) where TEntity :IEntity
        {
            sql = sql.Trim();
            if (sql.ToLower().StartsWith("select ") == false)
            {
                TEntity entity = Activator.CreateInstance<TEntity>();
                return CreateSelectSql(sql, entity);

            }
            return sql;
        }
        /// <summary>
        /// 创建Select语句，自动检测语句中的Select,From,Where关键字
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public static string CreateSelectSql(string sql, IEntity entity)
        {
            sql = sql.Trim();
            if (sql.ToLower().StartsWith("select ") == false)
            {
                string fields = GetFieldNames(entity);
                fields = '[' + entity.EntitySetName + "].[" + fields.Replace(",", "],[" + entity.EntitySetName + "].[") + "]";
                sql = "SELECT " + fields + (sql.ToLower().StartsWith("from") ? " " : (" FROM [" + entity.EntitySetName + "]" + (sql.ToLower().StartsWith("where") || sql.ToLower().StartsWith("order by") || sql.Length == 0 ? " " : " WHERE ") + sql));
            }
            return sql;
        }
        /// <summary>
        /// 自动创建Insert语句
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public static string CreateInsertSql(IEntity entity)
        {
            string fields = GetFieldNames(entity);
            //主键使用自动递增，在生成的InsertSql中排除该字段
            fields = "," + fields + ",";

            //主键为 Int  identity 时要去掉主键
            //if (fields.Contains("," + entity.EntityKey + ","))
            //{
            //    fields = fields.Replace("," + entity.EntityKey + ",", ",");
            //}

            fields = fields.Substring(1);
           // fields = fields.Substring(fields.Length - 1, 1);
            fields = fields.Substring(0,fields.Length - 1);
            string sql = string.Format("INSERT INTO [{0}] ({1}) VALUES({2});SELECT @@IDENTITY;",
                entity.EntitySetName,
                "[" + fields.Replace(",", "],[") + "]",
                "@" + fields.Replace(",", ",@"));
            return sql;
        }

        /// <summary>
        /// 创建修改语句
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public static string CreateUpdateSql(IEntity entity)
        {
            string parameters = "";
            foreach (string field in entity.GetChangeFields())
            {
                if (field != entity.EntityKey)
                {
                    parameters += "[" + field + "]=@" + field + ",";
                }
            }
            parameters = parameters.Remove(parameters.Length - 1, 1);

            string sql = string.Format("UPDATE [{0}] SET {1} WHERE [{2}]=@{2}",
                entity.EntitySetName,
                parameters,
                entity.EntityKey);
            return sql;
        }

        /// <summary>
        /// 创建Delete语句
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public static string CreateDeleteSql(IEntity entity)
        {
            string sql = string.Format("DELETE FROM [{0}] WHERE [{1}]=@{1}",
                entity.EntitySetName,
                entity.EntityKey);
            return sql;
        }
        /// <summary>
        /// 创建Delete语句  支持批量删除
        /// </summary>
        /// <param name="entity"></param>
        /// <param name="ids"></param>
        /// <returns></returns>
        public static string CreateDeleteSql(IEntity entity, string[] ids)
        {
            string sql = string.Format("DELETE FROM [{0}] WHERE [{1}] IN (" + string.Join(",", ids) + ")",
                entity.EntitySetName,
                entity.EntityKey);
            return sql;
        }
        /// <summary>
        /// 创建获取总记录数的Sql
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static string CreateCountSql(string sql)
        {
            string countSql = "SELECT COUNT (*) "+ RemoveSelect(sql);
            return countSql;
        }
        /// <summary>
        /// 去除select
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static string RemoveSelect(string sql)
        {
            int beginPos = sql.ToLower().IndexOf("from");
            return sql.Substring(beginPos);
        }
        /// <summary>
        /// 去除Order
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static string RemoveOrders(string sql)
        {
            MatchCollection ms = Regex.Matches(sql, "order\\s*by[\\w|\\W|\\s|\\S]*",RegexOptions.IgnoreCase);
            foreach (Match m in ms)
            {
                sql = sql.Replace(m.Value, "");
            }
            return sql;
        }
        /// <summary>
        /// 创建分页sql
        /// </summary>
        /// <param name="sql">当前查询的sql</param>
        /// <param name="pageId">页码</param>
        /// <param name="pageSize">每页条数</param>
        /// <returns></returns>
        public static string CreatePagedSelectSql(string sql, int pageId, int pageSize)
        {
            int maxId = pageId * pageSize;
            int minId = maxId - pageSize + 1;
            StringBuilder sb = new StringBuilder();
            string orderby = GetOrderByPart(sql);

            string distinctStr = "";
            String loweredString = sql.ToLower();
            String sqlPartString = sql.Trim();
            if (loweredString.Trim().StartsWith("select"))
            {
                int index = 6;
                if (loweredString.StartsWith("select distinct"))
                {
                    index = 15;
                }
                sqlPartString = sqlPartString.Substring(index);
            }
            sb.Append(sqlPartString);

            if (orderby == null || orderby.Length == 0)
            {
                orderby = "ORDER BY CURRENT_TIMESTAMP";
            }

            StringBuilder result = new StringBuilder();
            result.Append("SELECT * FROM (SELECT ").Append(distinctStr)
                .Append(" TOP 100 PERCENT ROW_NUMBER() OVER (").Append(orderby).Append(") AS __idx, ").Append(sb)
                .Append(") temp WHERE __idx BETWEEN ").Append(minId).Append(" AND ").Append(maxId);
            return result.ToString();
        }        
        static string GetOrderByPart(string sql)
        {
            string loweredString = sql.ToLower();
            int orderByIndex = loweredString.IndexOf("order by");
            if (orderByIndex != -1)
            {
                // if we find a new "order by" then we need to ignore
                // the previous one since it was probably used for a subquery
                return sql.Substring(orderByIndex);
            }
            else
            {
                return "";
            }
        }
        /// <summary>
        /// 获取安全的sql语句
        /// </summary>
        /// <param name="input">原sql语句</param>
        /// <returns></returns>
        public static string GetSafetySql(string input)
        {
            return input;
        }
    }
}
