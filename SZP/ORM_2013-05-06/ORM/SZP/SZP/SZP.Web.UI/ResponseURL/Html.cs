using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SZP.Common;
using System.Reflection;
using System.Linq;
using System.Linq.Expressions;
using System.Collections;
using System.Web;
using System.Net;
using System.IO;

namespace SZP.Web.UI
{
    public class ss
    {
        int _id;

        public int id
        {
            get { return _id; }
            set { _id = value; }
        }
        string _str;

        public string str
        {
            get { return _str; }
            set { _str = value; }
        }
    }

    public class Html
    {
      

        public static void TextBoxFor(object col,Object a)
        {
           
            PropertyInfo[] properties = a.GetType().GetProperties();
            foreach (var propertiy in properties)
            {
                Type type = typeof(Object);              
                object o = propertiy.GetValue(a, null);              
            }
            
        }

        public static void TextBoxFor(Expression<Func<string, string>> selector)
        {
            //PropertyInfo[] properties = model.GetType().GetProperties();
            //foreach (var propertiy in properties)
            //{
            //    Type type = typeof(Object);
            //    object o = propertiy.GetValue(model, null);
            //}

            // var string1 = "ddd";
            //  string1 = string1 + "aaa";
           
            //BinaryExpression mult = (BinaryExpression)lt.Left;
            //ParameterExpression en = (ParameterExpression)mult.Left;
            //ConstantExpression three = (ConstantExpression)mult.Right;
            //ConstantExpression five = (ConstantExpression)lt.Right;
            ParameterExpression en = (ParameterExpression)selector.Parameters.GetEnumerator();
            string str = string.Format("(1{0} 2({1} 3{2} 4{3}) 5{4})", selector.Body.Type, selector.Body.NodeType,selector.Name,selector.ReturnType,selector .NodeType);
            //string aa = stringTemp + stringTemp;

            var memberExpr = (MemberExpression)selector.Body;
            var member = (PropertyInfo)memberExpr.Member;
            string a = member.Name;
            var msg = (string)member.GetValue("", null); ;

            

        }
       


        //protected override Expression VisitMemberAccess(MemberExpression node)
        //{
        //    object obj = null;
        //    if (node.Expression != null)
        //    {
        //        Visit(node.Expression);
        //        obj = PopValue();
        //    }


        //    var member = node.Member;
        //    if (member.MemberType == MemberTypes.Property)
        //    {
        //        var value = ((PropertyInfo)member).GetValue(obj, null);
        //        PushValue(value);
        //    }
        //    else if (member.MemberType == MemberTypes.Field)
        //    {
        //        var value = ((FieldInfo)member).GetValue(obj);
        //        PushValue(value);
        //    }
        //    else
        //    {
        //        throw Error.NotPropertyOrField(member.Name);
        //    }
        //    return node;
        //}



        public static string Partial(string partialUrl)
        {
            string url = HttpContext.Current.Request.Url.AbsoluteUri ;       //要获取的网页地址   
            url = url.Substring(0, url.LastIndexOf('/')+1) + partialUrl + ".aspx";
            WebRequest req = WebRequest.Create(url);
            WebResponse res = req.GetResponse();
            Stream resStream = res.GetResponseStream();
            StreamReader sr = new StreamReader(resStream, Encoding.UTF8);
            string contentHTML = sr.ReadToEnd();    //读取网页的源代码      
            HttpContext.Current.Response.Write(contentHTML);
            resStream.Close();
            sr.Close();

            return contentHTML;
        }
    }
}
