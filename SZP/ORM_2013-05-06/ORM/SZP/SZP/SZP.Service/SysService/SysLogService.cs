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
                case LogOperation.Add: return "���";
                case LogOperation.Update: return "�޸�";
                case LogOperation.Delete: return "ɾ��";
                case LogOperation.Deletes: return "����ɾ��";
                case LogOperation.LogOn: return "��½";
                case LogOperation.LogOff: return "ע��";
                default: return "ҵ����";
            }
        }
    }

	public partial interface ISysLogService
	{

	}
}
