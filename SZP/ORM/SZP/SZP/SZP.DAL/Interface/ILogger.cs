using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Core
{
    public interface ILogger
    {
        void Log(string userName, LogOperation operation, object entity, Guid organizationalId,string ip);
        void Log(string userName, LogOperation operation, string objectName, string description, Guid organizationalId,string ip);
    }

    public enum LogOperation : int
    {
        Add = 1,
        Update = 2,
        Delete = 3,
        Deletes = 4,
        LogOn = 5,
        LogOff = 6
    }
}
