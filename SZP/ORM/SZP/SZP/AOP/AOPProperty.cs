using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Remoting.Activation;
using System.Runtime.Remoting.Contexts;
using System.Runtime.Remoting.Messaging;

namespace AOP
{
    public class AOPProperty : IContextProperty, IContributeObjectSink
    {
        //定义信息接收借口
        protected abstract IMessageSink CreateSink(IMessageSink nextSink);

        protected virtual string GetName()
        {
            return "AOP";
        }

        protected virtual void FreezeImpl(Context newContext)
        {
            return;
        }

        protected virtual bool CheckNewContext(Context newCtx)
        {
            return true;
        }

        public IMessageSink GetObjectSink(MarshalByRefObject obj, IMessageSink nextSink)
        {
            return CreateSink(nextSink);
        }

        public void Freeze(Context newContext)
        {
            FreezeImpl(newContext);
        }
        public bool IsNewContext(Context newContext)
        {
            return CheckNewContext(newContext);
        }
        public string Name
        {
            get { return GetName(); }
        }
    }
}
