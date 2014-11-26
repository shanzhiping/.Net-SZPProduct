using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

namespace SZP.Common
{
    public class JsonHelper
    {
        /// <summary>  
        /// 封装JSON  
        /// </summary>  
        /// <typeparam name="T">对象类型</typeparam>  
        /// <param name="obj">封装为JSON的对象</param>  
        /// <returns>string</returns>  
        public static string GetJSON<T>(object obj)
        {
            string result = String.Empty;
            try
            {
                System.Runtime.Serialization.Json.DataContractJsonSerializer serializer =
                   new System.Runtime.Serialization.Json.DataContractJsonSerializer(typeof(T));
                using (System.IO.MemoryStream ms = new System.IO.MemoryStream())
                {
                    serializer.WriteObject(ms, obj);
                    result = System.Text.Encoding.UTF8.GetString(ms.ToArray());
                    string re = "\"[a-z]+\":";
                    result = Regex.Replace(result, re, new MatchEvaluator(DeleteQuot), RegexOptions.Compiled | RegexOptions.IgnoreCase);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return result;
        }

        public static string DeleteQuot(Match match)
        {
            string matchValue = match.Value;
            if (matchValue.Length > 0)
                matchValue = matchValue.Replace("\"", "");
            return matchValue;
        }

        public static string AddQuot(Match match)
        {
            string matchValue = match.Value;
            if (matchValue.Length > 0)
                matchValue = matchValue.Insert(0, "\"").Insert(matchValue.Length, "\"");
            return matchValue;
        }


        /// <summary>  
        /// 把json还原为对象  
        /// </summary>  
        /// <typeparam name="T">对象类型</typeparam>  
        /// <param name="jsonStr">json字符串</param>  
        /// <returns>T 对象类型</returns>  
        public static T ParseFormByJson<T>(string jsonStr)
        {
            string re = "[a-z]+:";
            jsonStr = Regex.Replace(jsonStr, re, new MatchEvaluator(AddQuot), RegexOptions.Compiled | RegexOptions.IgnoreCase);
            T obj = Activator.CreateInstance<T>();
            using (System.IO.MemoryStream ms =
                new System.IO.MemoryStream(System.Text.Encoding.UTF8.GetBytes(jsonStr)))
            {
                System.Runtime.Serialization.Json.DataContractJsonSerializer serializer =
                    new System.Runtime.Serialization.Json.DataContractJsonSerializer(typeof(T));
                return (T)serializer.ReadObject(ms);
            }
        }
    }
}