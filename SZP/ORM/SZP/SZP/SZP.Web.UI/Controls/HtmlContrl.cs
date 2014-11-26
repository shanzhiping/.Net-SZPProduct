using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Web.UI;
using System.ComponentModel.DataAnnotations;

namespace SZP.Web.UI
{
    public abstract class Contrl
    {
        #region 属性
        private string contrlName = "TextBox ";

        public string ContrlName
        {
            get { return contrlName; }
            set { contrlName = value; }
        }
        private string id = "";

        public string Id
        {
            get
            {
                if (string.IsNullOrEmpty(id))
                    return "";
                else
                    return " id='" + id + "' ";
            }
            set { id = value; }
        }
        private string name = "";

        public string Name
        {
            get
            {
                if (string.IsNullOrEmpty(name))
                    return "";
                else
                    return " name='" + name + "' ";
            }
            set { name = value; }
        }
        private string _value = "";
        public string Value
        {
            get
            {
                if (string.IsNullOrEmpty(_value))
                    return "";
                else
                    return " value='" + _value + "' ";
            }
            set { _value = value; }
        }


        private string type = "text";

        public string Type
        {
            get
            {
                if (string.IsNullOrEmpty(type))
                    return "";
                else
                    return " type='" + type + "' ";
            }
            set { type = value; }
        }
        private static string className = "easyui-validatebox";

        public static string ClassName
        {
            get
            {
                if (string.IsNullOrEmpty(className))
                    return "";
                else
                    return " class='" + className + "' ";
            }
            set { className = value; }
        }
        private string validtype = "";

        public string Validtype
        {
            get { return validtype; }
            set { validtype = value; }
        }
        public string begin = "<input ";
        public string Begin
        {
            get { return begin; }
        }
        private string end = " />";

        public string End
        {
            get { return end + Validtype; }
        }

        private  Type pageContext;

        public  Type PageContext
        {
            get { return pageContext; }
            set { pageContext = value; }
        }
        #endregion


        #region  方法
        protected virtual string GetProperty(object property)
        {
            if (property == null)
                return "";

            PropertyInfo[] properties = property.GetType().GetProperties();
            string strProperty = "";
            foreach (PropertyInfo item in properties)
            {

                object propertyValue = item.GetValue(property, null);
                string itemName=item.Name;
                if (itemName.IndexOf('@') >= 0)
                {
                    itemName = itemName.Substring(1);
                }

                if (propertyValue == null)
                {
                    throw new Exception("Property 设置有误！");
                }
                strProperty = strProperty + string.Format(" {0}='{1}' ", itemName, propertyValue);
            }
            return strProperty;
        }

        protected virtual string GetVerification(string field, string assembly)
        {
            string strText = "";
            object[] objs = System.Type.GetType(assembly + ",SZP.Entity").GetCustomAttributes(typeof(MetadataTypeAttribute), false);
            //object[] objs = System.Type.GetType(assembly + ",SZP.Entity").GetCustomAttributes;
            foreach (object item in objs)
            {
                if (item is MetadataTypeAttribute)
                {
                    MetadataTypeAttribute metadata = item as MetadataTypeAttribute;
                    if (metadata != null)
                    {
                        //获取实体类中的所有的公共对象
                        Type metadataClass = metadata.MetadataClassType;
                        PropertyInfo propertie = metadataClass.GetProperty(field);
                        if (propertie == null)
                        {
                            continue;
                        }
                        object[] attrs = propertie.GetCustomAttributes(false) as object[];
                        foreach (object attr in attrs)
                        {
                            strText = strText + Attribute(attr);
                        }
                    }
                }
            }
            return strText;
        }

        protected virtual string Attribute(object attr)
        {
            RequiredAttribute required = attr as RequiredAttribute;
            if (required != null)
            {
                return RequiredAttribute(required);
            }
            StringLengthAttribute stringLength = attr as StringLengthAttribute;
            if (stringLength != null)
            {
                return StringLengthAttribute(stringLength);
            }
            RegularExpressionAttribute regular = attr as RegularExpressionAttribute;
            if (regular != null)
            {
                return RegularExpressionAttribute(regular);
            }
            RangeAttribute range = attr as RangeAttribute;
            if (range != null)
            {
                return RangeAttribute(range);

            }
            return "";
        }
        /// <summary>
        /// 必填验证
        /// </summary>
        /// <param name="required">RequiredAttribute 对象</param>
        /// <returns></returns>
        protected virtual string RequiredAttribute(RequiredAttribute required)
        {
            string strText = " required=\"true\" ";
            string error = required.ErrorMessage;
            if (string.IsNullOrEmpty(error))
            {
                strText = strText + string.Format(" invalidMessage=\"{0}\" ", error);
            }
            return strText;
        }
        /// <summary>
        /// 字符串长度范围验证
        /// </summary>
        /// <param name="stringLength">StringLengthAttribute 对象</param>
        /// <returns></returns>
        protected virtual string StringLengthAttribute(StringLengthAttribute stringLength)
        {
            //stringLength .MaximumLength
            return string.Format(" validType=\"length[{0},{1}]\" invalidMessage=\"{2}\" ", stringLength.MinimumLength, stringLength.MaximumLength, stringLength.ErrorMessage);
        }
        /// <summary>
        /// 数字范围验证
        /// </summary>
        /// <param name="range"></param>
        /// <returns></returns>
        protected virtual string RangeAttribute(RangeAttribute range)
        {
            return string.Format(" max=\"{0}\" precision=\"{1}\"  invalidMessage=\"{2}\" ", range.Maximum, range.Minimum, range.ErrorMessage);
        }
        /// <summary>
        /// 正则表达式验证
        /// </summary>
        /// <param name="regular">RegularExpressionAttribute 对象</param>
        /// <returns></returns>
        protected virtual string RegularExpressionAttribute(RegularExpressionAttribute regular)
        {
            string strText = "<script language=\"javascript\">$.extend($.fn.validatebox.defaults.rules, {";
            strText = strText + "   valid" + name + ": {";
            strText = strText + "     validator: function (value, param) {";
            strText = strText + string.Format("     return /{0}/.test(value);", regular.Pattern);
            strText = strText + "},";
            strText = strText + string.Format("       message: '{0}'", regular.ErrorMessage);
            strText = strText + "}";
            strText = strText + "});</script>";
            //判断 myName 是否已被注册
            //string strText = "alert('aaa');";
            //if (!ClientScript.IsClientScriptBlockRegistered(PageContext, "valid" + id))
            //{
            //    //动态注册 JavaScript
            //    ClientScript.RegisterClientScriptBlock(PageContext, "valid" + id, strText, true);
            //}          
            Validtype = strText;
            return string.Format("  validtype=\"valid{0}\"  ", name);
        }
        #endregion
    }

    public partial class TextBoxFor : Contrl
    {

        #region  属性      
       

        private string textBoxBuild="";

        public string TextBoxBuild
        {
            
            get { return textBoxBuild; }
            set { textBoxBuild = value; }
        }

        private string validtype = "";

        public string Validtype
        {
            get { return validtype; }
            set { validtype = value; }
        }
        #endregion


        #region 构造函数
        public TextBoxFor()
        {
            TextBoxBuild = Begin + ContrlName + Id + Name +ClassName+ End;
        }
        public TextBoxFor(Type pageContext,string field, string fieldValue, string assembly, object property)
        {
            PageContext = pageContext;
            Id = field;
            Name = field;
            Value = fieldValue;
            Validtype = GetVerification(field, assembly);
            TextBoxBuild = Begin + Type + ClassName + Id + Name + Value + GetProperty(property) + Validtype + End;
        }
        #endregion       
    }

    public partial class RadioFor : Contrl
    {
         #region  属性      
       

        private static bool isChecked = false;

        public static bool IsChecked
        {
            get { return isChecked; }
            set { isChecked = value; }
        }
        
        private string radioBuild="";

        public string RadioBuild
        {
            get { return radioBuild; }
            set { radioBuild = value; }
        }
        #endregion


        #region 构造函数
        public RadioFor()
        {
            Type = "radio";
            RadioBuild = Begin + Type + Id + Name + ClassName + End;
            if (isChecked)
            {
                RadioBuild = RadioBuild + " Checked='checked' ";
            }
            RadioBuild = RadioBuild + End;
           
        }
        public RadioFor(string field,bool isChecked,string valueText, string assembly, object property)
        {
            GetRadioBuild(field, isChecked,valueText, property);
        }

        private void GetRadioBuild(string field,bool isChecked,string valueText, object property)
        {
            Type = "radio";
            //GetVerification(field, assembly);
            //Id = field;
            Name = field;
            Value = valueText;
            string strProperty = GetProperty(property);
            RadioBuild = Begin + Type + ClassName + Id + Name + Value + strProperty;

            //string checkText = "";
            if (isChecked)
                RadioBuild = RadioBuild + " Checked='checked' ";
            RadioBuild = RadioBuild  + End;
           // return valueText;
        }

       
        protected override string GetProperty(object property)
        {
            if (property == null)
                return "";

            PropertyInfo[] properties = property.GetType().GetProperties();
            string strProperty = "";
            foreach (PropertyInfo item in properties)
            {
                object propertyValue = item.GetValue(property, null);
                if (item.Name.ToLower().Equals("value"))
                {
                    continue;
                }
                if (item.Name.ToLower().Equals("checked"))
                {
                    continue;                 
                }
                if (propertyValue == null)
                {
                    throw new Exception("Property 设置有误！");
                }

                strProperty = strProperty + string.Format(" {0}='{1}' ", item.Name, propertyValue);
            }
            return strProperty;
          //  return base.GetProperty(property);
        }
        #endregion      
    }
}
