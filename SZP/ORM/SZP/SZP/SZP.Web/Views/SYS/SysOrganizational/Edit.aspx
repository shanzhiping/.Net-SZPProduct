﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="SZP.Web.Views.SYS.SysOrganizational.Edit" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%=HTemplate.Template("~/Views/Shared/_Edit.htm", "@Title=编辑组织结构")%>
</head>
<body>
	<form id="form1" method="post">
    <div class="Form">
         <div class="fi">
            <label>
            <span style="color:Red;">*</span>机构名称：</label>
            <div class="cont">
              <%= Html.TextBoxFor(m => Model.Name)%>   
            </div>
        </div>

        <div class="fi">
            <label>
               英文名称：</label>
            <div class="cont">
                <%= Html.TextBoxFor(m => Model.EnglishName, new { required = "true" })%>   
            </div>
        </div>
        <div class="fi">
            <label>
                地址：</label>
            <div class="cont">
                <%= Html.TextBoxFor(m => Model.Adddrss, new { required = "true" })%>  
            </div>
        </div>
        <div class="fi">
            <label>
                联系电话：</label>
            <div class="cont">
                <%= Html.TextBoxFor(m => Model.Phone, new { required = "true" })%>  
            </div>
        </div>
        <div class="fi">
            <label>
                传真：</label>
            <div class="cont">
                 <%= Html.TextBoxFor(m => Model.Fax, new { required = "true" })%>  
            </div>
        </div>
        <div class="fi">
            <label>
                备注：</label>
            <div class="cont">
                 <%= Html.TextBoxFor(m => Model.Fax)%>  
            </div>
        </div>
          <div class="btn">
            <a id="btnSubmit" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)">
                确定</a> 
                <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">
                    取消</a>
        </div>
    </div>
    </form>
</body>
</html>
