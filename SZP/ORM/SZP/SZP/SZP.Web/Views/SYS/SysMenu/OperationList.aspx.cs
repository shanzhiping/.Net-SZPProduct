﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Web.UI;
using SZP.Entity;
using SZP.Service;
using SZP.Core;

namespace SZP.Web.Views.SYS.SysMenu
{
    public partial class OperationList : EntityPage<SZP.Entity.SysOperation>
    {       
        protected override void DoList()
        {
            int pageId = 0, pageSize = 0; string parentId = "";
            if (Request["page"] != null)
            {
                int.TryParse(Request["page"], out pageId);
            }

            if (Request["psize"] != null)
            {
                int.TryParse(Request["psize"], out pageSize);
            }
            if (Request["parentId"] != null)
            {
                parentId = Request["parentId"];
            }
            //当前索引页
            if (pageId == 0)
            {
                pageId = 1;
            }
            //显示条数
            if (pageSize == 0)
            {
                pageSize = 20;
            }

            int total = 0;
            ISysOperationService Iservice = (ISysOperationService)service;
            PagedList<Entity.SysOperation> list = Iservice.GetPageList(pageId, pageSize, parentId);
            base.SetContext(total, list);
        }
    }
}