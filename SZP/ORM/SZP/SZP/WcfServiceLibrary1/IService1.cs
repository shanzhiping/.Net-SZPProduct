using System;
using System.Globalization;
using System.ServiceModel.Channels;
using System.IO;
using System.ServiceModel;
using System.Xml;
using System.Runtime.Serialization;

namespace WcfServiceLibrary1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract(Namespace="WcfServiceLibrary1")]
    public interface IService1
    {
        [OperationContract]
        string Add(string request);

    }
 }
