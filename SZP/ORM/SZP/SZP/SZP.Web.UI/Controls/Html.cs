using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SZP.Common;
using System.Reflection;

using System.Linq.Expressions;
using System.Collections;
using System.Web;
using System.Net;
using System.IO;
using SZP.Entity;
using SZP.Web.UI.ResponseURL;

namespace SZP.Web.UI
{
    public partial class Html
    {
        public static void Load()
        {
            SZP.Web.UI.RadioFor.IsChecked = false;
        }
        #region  TextBox   text
        private static Type pageContext;

        public static Type PageContext
        {
            get { return Html.pageContext; }
            set { Html.pageContext = value; }
        }
        /// <summary>
        /// TextBox控件  easyUi  class='easyui-validatebox'
        /// </summary>
        /// <param name="predicate">对象值</param>
        /// <returns>TextBox标签</returns>
        public static string TextBoxFor(Expression<Func<object, object>> predicate)
        {
            return TextBoxFor(predicate,null);
        }
        /// <summary>
        /// TextBox控件  easyUi  class='easyui-validatebox'
        /// </summary>
        /// <param name="predicate">对象值</param>
        /// <returns>TextBox标签</returns>
        public static string TextBoxFor(object htmlAttributes)
        {
            return TextBoxFor(null, htmlAttributes);
        }
        /// <summary>
        /// TextBox控件  easyUi  class='easyui-validatebox'
        /// </summary>
        /// <param name="predicate">对象值</param>
        /// <param name="property">text属性     写法{属性1=值1,属性2=值2，....}</param>
        /// <returns>TextBox标签</returns>
        public static string TextBoxFor(Expression<Func<object, object>> predicate, object htmlAttributes)
        {
            HtmlBuilder builder = new HtmlBuilder(predicate.Body);
            TextBoxFor textBox = new TextBoxFor(pageContext, builder.Field, builder.FieldValue, builder.Assembly, htmlAttributes);
            return textBox.TextBoxBuild;
        }
        #endregion

        #region  TextBox   radio
        /// <summary>
        /// Radio控件  easyUi  class='easyui-validatebox'
        /// </summary>
        /// <param name="predicate">对象值</param>
        /// <returns>Radio标签</returns>
        public static string RadioFor(Expression<Func<object, object>> predicate,string value)
        {
            return RadioFor(predicate, value, false,null);
        }
        /// <summary>
        /// Radio控件  easyUi  class='easyui-validatebox'
        /// </summary>
        /// <param name="predicate">对象值</param>
        /// <returns>Radio标签</returns>
        public static string RadioFor(Expression<Func<object, object>> predicate, string value,bool isChecked)
        {
            return RadioFor(predicate, value, isChecked,null);
        }
        /// <summary>
        /// Radio控件  easyUi  class='easyui-validatebox'
        /// </summary>
        /// <param name="predicate">对象值</param>
        /// <param name="property">Radio属性     写法{属性1=值1,属性2=值2，....}</param>
        /// <returns>Radio标签</returns>
        public static string RadioFor(Expression<Func<object, object>> predicate, string value, object htmlAttributes)
        {
            return RadioFor(predicate, value, false, htmlAttributes);
            //HtmlBuilder builder = new HtmlBuilder(predicate.Body);
            //RadioFor radio = new RadioFor(builder.Field, builder.FieldValue, builder.Assembly, builder.FieldType, value, property);
            //return radio.RadioBuild;
        }

        /// <summary>
        /// Radio控件  easyUi  class='easyui-validatebox'
        /// </summary>
        /// <param name="predicate">对象值</param>
        /// <param name="property">Radio属性     写法{属性1=值1,属性2=值2，....}</param>
        /// <returns>Radio标签</returns>
        public static string RadioFor(Expression<Func<object, object>> predicate, string value, bool isChecked, object htmlAttributes)
        {
           
            HtmlBuilder builder = new HtmlBuilder(predicate.Body);
            if (isChecked)
            {
                UI.RadioFor.IsChecked = true;
            }
            else
            {
                if (UI.RadioFor.IsChecked==false)
                {
                    isChecked = SetIsChecked(builder.FieldValue, builder.FieldType, value);
                }
            }
            if (builder.FieldType.ToUpper().IndexOf("BOOLEAN") >= 0 || builder.FieldType.ToUpper().IndexOf("BOOL") >= 0)
            {
                if (value == "1")
                    value = "true";
                else
                    value = "false";             
            }
            RadioFor radio = new RadioFor(builder.Field, isChecked, value, builder.Assembly, htmlAttributes);
            return radio.RadioBuild;
        }

        private static bool SetIsChecked(string fieldValue, string fieldType, string valueText)
        {
            if (fieldType.ToUpper().IndexOf("BOOLEAN") >= 0 || fieldType.ToUpper().IndexOf("BOOL") >= 0)
            {
                if (valueText == "1")
                    valueText = "true";
                else
                    valueText = "false";

                if (fieldValue.ToLower() == valueText.ToLower())
                {
                    return true;
                }
            }
            else
            {
                if (fieldValue == valueText)
                {
                    return true;
                }
            }


            return false;
        }
        #endregion


    }
}
