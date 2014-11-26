using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Linq.Expressions;
using System.Reflection;


namespace SZP.Web.UI
{
    public class HtmlBuilder : SZP.Web.Common.Lambda.ExpressionVisitor
    {
        public string Field;
        public string FieldType;
        public string FieldValue;
        public string Assembly;

        public HtmlBuilder(Expression m)
        {
            Common.Lambda.PartialEvaluator evaluator = new Common.Lambda.PartialEvaluator();
            Expression evaluatedExpression = evaluator.Eval(m);
            FieldValue = ((ConstantExpression)evaluatedExpression).Value.ToString();
            base.Visit(m);
        }
        protected override Expression VisitMemberAccess(MemberExpression m)
        {
            if (m == null) return m;
            PropertyInfo propertyInfo = m.Member as PropertyInfo;
            if (propertyInfo == null)
            {
                Assembly = m.Type.FullName;
                return m;
            }
            Field = propertyInfo.Name;
            FieldType = propertyInfo.PropertyType.ToString();
            return base.VisitMemberAccess(m);
        }
    }
}
