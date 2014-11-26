using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.ComponentModel;
using System.Web;
using  SZP.Entity;
using SZP.Core;


namespace SZP.Service
{
	public partial class SysLogService:Core.ILogger 
	{
        public void Log(string userName, Core.LogOperation operation, object entity, Guid organizationalId, string ip)
        {
            string objectName = "", description = "";
            object obj = entity;
            if (obj != null)
            {
                if (obj.GetType().IsDefined(typeof(DescriptionAttribute), false)) 
                {
                    DescriptionAttribute[] attris = (DescriptionAttribute[])obj.GetType().GetCustomAttributes(typeof(DescriptionAttribute), false);
                    objectName = attris[0].Description;
                    PropertyInfo propName = obj.GetType().GetProperty("Name");
                    if (propName != null)
                    {
                        description = "Name:" + propName.GetValue(obj, null).ToString();
                    }
                }
            }
            Log(userName, operation, objectName, description, organizationalId,ip);
        }

        public void Log(string userName, Core.LogOperation operation, string objectName, string description, Guid organizationalId,string ip)
        {
            SysLog log = new SysLog();
            log.Id = Guid.NewGuid();
            log.UserName = userName;
            log.EventId = (int)operation;
            log.IP = ip;
            log.OrganizationalId = organizationalId;
            log.CreateAt = DateTime.Now;
            log.Description = description;
            log.EventName = GetOperationName(operation) + objectName;
            dao.Add(log);
        }
        string GetOperationName(LogOperation operation)
        {
            switch (operation)
            {
                case LogOperation.Add: return "添加";
                case LogOperation.Update: return "修改";
                case LogOperation.Delete: return "删除";
                case LogOperation.Deletes: return "批量删除";
                case LogOperation.LogOn: return "登陆";
                case LogOperation.LogOff: return "注销";
                default: return "业务处理";
            }
        }
    }

	public partial interface ISysLogService
	{

	}
}
