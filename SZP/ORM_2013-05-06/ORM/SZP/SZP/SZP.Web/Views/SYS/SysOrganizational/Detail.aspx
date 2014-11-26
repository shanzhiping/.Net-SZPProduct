<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="SZP.Web.Views.SYS.SysOrganizational.Detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%=SZP.Web.UI.HTemplate.Template("~/Views/Shared/_Detail.htm", "@Title=查看组织结构")%>
</head>
<body>
<form id="form1" method="post">
    <div class="Form">
         <div class="fi">
            <label>
                机构名称：</label>
            <div class="cont">
                <%=Model.Name %>
            </div>
        </div>

        <div class="fi">
            <label>
               英文名称：</label>
            <div class="cont">
                <%=Model.EnglishName %>
            </div>
        </div>
        <div class="fi">
            <label>
                地址：</label>
            <div class="cont">
                <%=Model.Adddrss %>
            </div>
        </div>
        <div class="fi">
            <label>
                联系电话：</label>
            <div class="cont">
                <%=Model.Phone %>
            </div>
        </div>
        <div class="fi">
            <label>
                传真：</label>
            <div class="cont">
                <%=Model.Fax %>
            </div>
        </div>
        <div class="fi">
            <label>
                备注：</label>
            <div class="cont">
                <%=Model.Remark %>
            </div>
        </div>
          <div class="btn">
                <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">
                    取消</a>
        </div>
    </div>
    </form>
</body>
</html>
