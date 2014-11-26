using System;
using System.Globalization;
using System.IO;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Threading;
using System.Xml;
using SZP.Common;
using SZP.Entity;


namespace WcfServiceLibrary1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class Service1 : IService1
    {

        public string Add(string request)
        {
            SysUser sys = JsonHelper.ParseFormByJson<SysUser>(request);
            sys.Name =sys.Name+ "responseName";
            sys.Password = sys.Password + "789456";
            sys.IsSystem = true;
            return JsonHelper.GetJSON<SysUser>(sys);
        }

    }
 
}
