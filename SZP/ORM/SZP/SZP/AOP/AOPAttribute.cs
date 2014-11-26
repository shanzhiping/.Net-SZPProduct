using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Remoting.Contexts;
using System.Runtime.Remoting.Activation;

namespace AOP
{
    [AttributeUsage(AttributeTargets.Class)]
    public class AOPAttribute : ContextAttribute
    {
        public AOPAttribute()
            : base("AOP")
        {
        }

        public sealed override void GetPropertiertiesForNewContext(IConstructionCallMessage ctorMsg)
        {
            ctorMsg.ContextProperties.Add(GetAOPProperty());
        }
        protected abstract AOPProperty GetAOPProperty();
    }
}
