using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Collections;

namespace SZP.Common
{   /// <summary>
    /// 构造SQL语句的工具类
    /// </summary>
    public class SqlHelper
    {
        private static readonly string ControlString = "ControlString";
        private static readonly string SqlString = "SqlString";
        private static readonly char IDValueSeparator = ',';
        private static readonly char ControlSeparator = ';';
        private static readonly string OR = "OR";
        private static readonly string AND = "AND";
        private static readonly string LIKE = "LIKE";
        private readonly SearchCondition ds;
        private string sqlString;

        public SqlHelper()
        {
            ds = new SearchCondition();
            sqlString = String.Empty;
        }

        /// <summary>
        /// 添加查询条件
        /// </summary>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_Operators">运算符号</param>
        /// <param name="_DataType">数据类型</param>
        /// <param name="_Value">比较值</param>
        /// <param name="_isMargeOr">是否加入到OR组合条件中去</param>
        public void AddCondition(string _FieldName, Operators _Operators, DataType _DataType, string _Value,
                                 bool _isMargeOr)
        {
            string isMargeOr = _isMargeOr.ToString();
            AddCondition("", _FieldName, _Operators, _DataType, _Value, isMargeOr);
        }

        /// <summary>
        /// 添加查询条件
        /// </summary>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_DataType">数据类型</param>
        /// <param name="_StartValue">起始值</param>
        /// <param name="_EndValue">结束值</param>
        private void AddCondition(string _FieldName, DataType _DataType, string _StartValue, string _EndValue)
        {
            AddCondition("", _FieldName, _DataType, _StartValue, _EndValue, "", "");
        }

        /// <summary>
        /// 添加查询条件
        /// </summary>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_DataType">数据类型</param>
        /// <param name="_StartValue">起始值</param>
        /// <param name="_EndValue">结束值</param>
        /// <param name="_StartControlID">起始值对应的控件ID</param>
        /// <param name="_EndControlID">结束值对应的控件ID</param>
        public void AddCondition(string _FieldName, DataType _DataType, string _StartValue, string _EndValue,
                                 string _StartControlID, string _EndControlID)
        {
            AddCondition("", _FieldName, _DataType, _StartValue, _EndValue, _StartControlID, _EndControlID);
        }

        /// <summary>
        /// 添加查询条件
        /// </summary>
        /// <param name="_TableName">表名或别名</param>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_Operators">运算符号</param>
        /// <param name="_DataType">数据类型</param>
        /// <param name="_Value">比较值</param>
        private void AddCondition(string _TableName, string _FieldName, Operators _Operators, DataType _DataType,
                                  string _Value)
        {
            AddCondition(_TableName, _FieldName, _Operators, _DataType, _Value, "");
        }

        /// <summary>
        /// 添加查询条件
        /// </summary>
        /// <param name="_TableName">表名或别名</param>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_DataType">数据类型</param>
        /// <param name="_StartValue">起始值</param>
        /// <param name="_EndValue">结束值</param>
        private void AddCondition(string _TableName, string _FieldName, DataType _DataType, string _StartValue,
                                  string _EndValue)
        {
            AddCondition(_TableName, _FieldName, _DataType, _StartValue, _EndValue, "", "");
        }

        /// <summary>
        /// 添加查询条件，基础方法
        /// </summary>
        /// <param name="_TableName">表名或别名，可为空串（如果字段名唯一，不需要加表名或别名标识）</param>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_Operators">运算符号</param>
        /// <param name="_DataType">数据类型</param>
        /// <param name="_Value">比较值</param>
        /// <param name="_ControlID">对应的控件ID</param>
        private void AddCondition(string _TableName, string _FieldName, Operators _Operators, DataType _DataType,
                                  string _Value, string _ControlID)
        {
            ds.SearchConditionTable.AddSearchConditionRow(_TableName, _FieldName, _Operators.ToString(), _Value,
                                                          _DataType.ToString(), _ControlID);
        }

        /// <summary>
        /// 添加查询条件
        /// </summary>
        /// <param name="_TableName">表名或别名，可为空串（如果字段名唯一，不需要加表名或别名标识）</param>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_DataType">数据类型</param>
        /// <param name="_StartValue">起始值</param>
        /// <param name="_EndValue">结束值</param>
        /// <param name="_StartControlID">起始值对应的控件ID</param>
        /// <param name="_EndControlID">结束值对应的控件ID</param>
        private void AddCondition(string _TableName, string _FieldName, DataType _DataType, string _StartValue,
                                  string _EndValue, string _StartControlID, string _EndControlID)
        {
            AddCondition(_TableName, _FieldName, Operators.GreaterThanEqual, _DataType, _StartValue, _StartControlID);
            AddCondition(_TableName, _FieldName, Operators.LessThanEqual, _DataType, _EndValue, _EndControlID);
        }

        /// <summary>
        /// 添加排序条件
        /// </summary>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_IsDesc">排序方式：是否倒序</param>
        private void AddOrderCondition(string _FieldName, bool _IsDesc)
        {
            AddOrderCondition("", _FieldName, _IsDesc, "", "");
        }

        /// <summary>
        /// 添加排序条件
        /// </summary>
        /// <param name="_TableName">表名或别名，可为空串（如果字段名唯一，不需要加表名或别名标识）</param>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_IsDesc">排序方式：是否倒序</param>
        private void AddOrderCondition(string _TableName, string _FieldName, bool _IsDesc)
        {
            AddOrderCondition(_TableName, _FieldName, _IsDesc, "", "");
        }

        /// <summary>
        /// 添加排序条件
        /// </summary>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_IsDesc">排序方式：是否倒序</param>
        /// <param name="_FieldControlID">字段名对应的控件ID</param>
        /// <param name="_OrderControlID">排序方式对应的控件ID</param>
        public void AddOrderCondition(string _FieldName, bool _IsDesc, string _FieldControlID, string _OrderControlID)
        {
            AddOrderCondition("", _FieldName, _IsDesc, _FieldControlID, _OrderControlID);
        }

        /// <summary>
        /// 添加排序条件，基础方法
        /// </summary>
        /// <param name="_TableName">表名或别名，可为空串（如果字段名唯一，不需要加表名或别名标识）</param>
        /// <param name="_FieldName">字段名</param>
        /// <param name="_IsDesc">排序方式：是否倒序</param>
        /// <param name="_FieldControlID">字段名对应的控件ID</param>
        /// <param name="_OrderControlID">排序方式对应的控件ID</param>
        private void AddOrderCondition(string _TableName, string _FieldName, bool _IsDesc, string _FieldControlID,
                                       string _OrderControlID)
        {
            string _Order = "ASC";
            if (_IsDesc)
            {
                _Order = "DESC";
            }
            ds.OrderField.AddOrderFieldRow(_TableName, _FieldName, _Order, _FieldControlID, _OrderControlID);
        }

        /// <summary>
        /// 返回查询的条件语句，包含排序，例：AND …… ORDER BY …… 或空串
        /// Update By JesseChan 2012-08-30 新增OR组合查询逻辑
        /// </summary>
        /// <returns></returns>
        public string GetFilterCondition()
        {
            var comBuilder = new StringBuilder();
            var orBuilder = new StringBuilder();
            foreach (SearchCondition.SearchConditionRow dr in ds.SearchConditionTable.Rows)
            {
                if(dr.s_ControlID.ToLower().Equals("true"))
                {
                    orBuilder.Append(BuildFilterCondition(dr));
                }
                else
                {
                    comBuilder.Append(BuildFilterCondition(dr));
                }
            }
            if (comBuilder.Length > 0)
            {
                sqlString = comBuilder.ToString().Substring(4);
            }
            if(orBuilder.Length>0)
            {
                sqlString += sqlString.Length > 0 ? " AND (" + orBuilder.ToString().Substring(4).Replace("AND", "OR") + ")" : " (" + orBuilder.ToString().Substring(4).Replace("AND", "OR") + ")";
            }
            return sqlString;
        }

        public static string EncryptSql(string sqlString)
        {
            System.Web.HttpContext http = System.Web.HttpContext.Current;

            return http.Server.UrlEncode(sqlString.Replace("=", "@#$").Replace("'", "@$#"));
        }

        public static string UnEncryptSql(string sqlString)
        {
            System.Web.HttpContext http = System.Web.HttpContext.Current;

            return http.Server.UrlDecode(sqlString).Replace("@#$", "=").Replace("@$#", "'");
        }

        /// <summary>
        /// 获取当前页Url里的查询条件和控件信息
        /// </summary>
        /// <returns></returns>
        public static string GetUrlStringFromUrl()
        {
            System.Web.HttpContext http = System.Web.HttpContext.Current;

            var comBuilder = new StringBuilder();
            comBuilder.
                Append("&").
                Append(ControlString).
                Append("=").
                Append(http.Server.UrlEncode(http.Request[ControlString]));
            comBuilder.
                Append("&").
                Append(SqlString).
                Append("=").
                Append(http.Server.UrlEncode(http.Request[SqlString]));
            return comBuilder.ToString();
        }

        /// <summary>
        /// 返回进入其他页面时需要附加到Url里的字符串，用来从其他页面返回列表页时保留查询条件和查询结果
        /// </summary>
        /// <returns>query</returns>
        public string GetUrlString()
        {
            var controlBuilder = new StringBuilder();
            foreach (SearchCondition.SearchConditionRow dr in ds.SearchConditionTable.Rows)
            {
                controlBuilder.Append(BuildUrlString(dr));
            }
            controlBuilder.Append(BuildOrderString());

            var comBuilder = new StringBuilder();
            comBuilder.
                Append("&").
                Append(ControlString).
                Append("=").
                Append(System.Web.HttpContext.Current.Server.UrlEncode(controlBuilder.ToString()));
            if (sqlString == string.Empty)
            {
                sqlString = GetFilterCondition();
            }
            sqlString = EncryptSql(sqlString);
            comBuilder.
                Append("&").
                Append(SqlString).
                Append("=").
                Append(System.Web.HttpContext.Current.Server.UrlEncode(sqlString));
            return comBuilder.ToString();
        }

        private string BuildUrlString(SearchCondition.SearchConditionRow dr)
        {
            var urlBuilder = new StringBuilder();
            string _ControlId = dr.s_ControlID;
            string _Value = dr.s_Value;
            if (_ControlId.Trim() != "" && _Value.Trim() != "")
            {
                urlBuilder.Append(_ControlId).Append(IDValueSeparator).Append(_Value).Append(ControlSeparator);
            }
            return urlBuilder.ToString();
        }

        private string BuildOrderString()
        {
            var urlBuilder = new StringBuilder();
            if (ds.OrderField.Count > 0)
            {
                foreach (SearchCondition.OrderFieldRow dr in ds.OrderField.Rows)
                {
                    if (dr.s_FieldName.Trim() != "" && dr.s_FieldControlID.Trim() != "")
                    {
                        urlBuilder.Append(dr.s_FieldControlID).Append(IDValueSeparator).Append(dr.s_FieldName).Append(
                            ControlSeparator);
                    }
                    if (dr.s_OrderControlID.Trim() != "")
                    {
                        string order = bool.TrueString;
                        if (dr.s_Order.Trim().ToUpper() == "ASC")
                        {
                            order = bool.FalseString;
                        }
                        urlBuilder.Append(dr.s_OrderControlID).Append(IDValueSeparator).Append(order).Append(
                            ControlSeparator);
                    }
                }
            }
            return urlBuilder.ToString();
        }

        private string BuildOrderCondition()
        {
            var orderBuilder = new StringBuilder();
            if (ds.OrderField.Count > 0)
            {
                orderBuilder.Append(" ORDER BY ");
                foreach (SearchCondition.OrderFieldRow dr in ds.OrderField.Rows)
                {
                    if (dr.s_FieldName.Trim() != "")
                    {
                        if (dr.s_TableName.Trim() != "")
                        {
                            orderBuilder.Append(dr.s_TableName + ".");
                        }
                        orderBuilder.Append(dr.s_FieldName + " " + dr.s_Order + " ,");
                    }
                }
            }
            return orderBuilder.ToString().TrimEnd(',');
        }

        private string BuildFilterCondition(SearchCondition.SearchConditionRow dr)
        {
            string TableName = dr.s_TableName;
            string FieldName = dr.s_FieldName;
            string Value = dr.s_Value;
            var compare = (Operators)Enum.Parse(Operators.Equal.GetType(), dr.s_Compare);
            var type = (DataType)Enum.Parse(DataType.Bool.GetType(), dr.s_Type);

            return BuildFilterCondition(TableName, FieldName, Value, compare, type);
        }

        private string BuildFilterCondition(string TableName, string FieldName, string Value, Operators compare,
                                            DataType type)
        {
            Value = Value.Replace("'", "''").Trim();
            var sqlBuilder = new StringBuilder();

            if (FieldName != null && FieldName != "" && Value != null && Value != "")
            {
                sqlBuilder.Append(" AND ");
                if (type == DataType.Date)
                {
                    sqlBuilder.Append(" CONVERT(CHAR(10), ");
                }
                if (TableName.Trim() != "")
                {
                    sqlBuilder.Append(TableName).Append(".");
                }

                sqlBuilder.Append(FieldName);

                if (type == DataType.Date)
                {
                    sqlBuilder.Append(" ,21) ");
                }
                sqlBuilder.Append(ConvertRangeType(compare));

                if (compare == Operators.Like || compare == Operators.NoteLike)
                {
                    sqlBuilder.Append("'%")
                        .Append(Value)
                        .Append("%'");
                }

                else if (compare == Operators.LikeLeft)
                {
                    sqlBuilder.Append("'")
                        .Append(Value)
                        .Append("%'");
                }
                else if (compare == Operators.In)
                {
                    Value = Value.Replace("'", "");
                    string[] a = Value.Split(',');
                    sqlBuilder.Append("(");
                    for (int i = 0; i < a.Length; i++)
                    {
                        sqlBuilder.Append("'" + a[i] + "'");
                        if (i != a.Length - 1)
                            sqlBuilder.Append(",");
                    }
                    sqlBuilder.Append(")");
                }
                else if (compare == Operators.SubQueryIn)
                {
                    sqlBuilder.Append(" In ( ");
                    sqlBuilder.Append(Value);
                    sqlBuilder.Append(" )");
                }
                else
                {
                    if (type == DataType.String)
                    {
                        sqlBuilder.Append("'")
                            .Append(Value)
                            .Append("'");
                    }
                    else if (type == DataType.Date)
                    {
                        sqlBuilder.Append("'")
                            .Append(Value)
                            .Append("'");
                    }
                    else
                    {
                        sqlBuilder.Append(Value);
                    }
                }
            }

            return sqlBuilder.ToString();
        }

        private string ConvertRangeType(Operators range)
        {
            string result = "";
            if (range == Operators.GreaterThan)
                result = " > ";
            if (range == Operators.GreaterThanEqual)
                result = " >= ";
            if (range == Operators.Equal)
                result = " = ";
            if (range == Operators.In)
                result = " IN ";
            if (range == Operators.Like)
                result = " LIKE ";
            if (range == Operators.NoteLike)
                result = " NOT LIKE ";
            if (range == Operators.LikeLeft)
                result = " LIKE ";
            if (range == Operators.LessThanEqual)
                result = " <= ";
            if (range == Operators.LessThan)
                result = " < ";
            if (range == Operators.NotEqual)
                result = " <> ";
            return result;
        }
    }


    public enum DataType
    {
        String,
        Date,
        Integer,
        Double,
        Bool
    } ;

    /// <summary>
    /// 运算符号
    /// </summary>
    public enum Operators
    {
        /// <summary>
        /// 等于
        /// </summary>
        Equal,
        /// <summary>
        /// 不等于
        /// </summary>
        NotEqual,
        /// <summary>
        /// 大于
        /// </summary>
        GreaterThan,
        /// <summary>
        /// 大于等于
        /// </summary>
        GreaterThanEqual,
        /// <summary>
        /// 小于
        /// </summary>
        LessThan,
        /// <summary>
        /// 小于等于
        /// </summary>
        LessThanEqual,
        /// <summary>
        /// 属于
        /// </summary>
        In,
        /// <summary>
        /// 匹配
        /// </summary>
        Like,
        /// <summary>
        /// 匹配
        /// </summary>
        NoteLike,
        /// <summary>
        /// 左边匹配
        /// </summary>
        LikeLeft,
        /// <summary>
        /// 子查询
        /// </summary>
        SubQueryIn,
    }
}

