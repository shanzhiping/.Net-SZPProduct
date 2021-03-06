﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.Edit" %>
<%@  Import   Namespace="SZP.Web.UI"   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <% =SZP.Web .UI.HTemplate.Template("~/Views/Shared/_Edit.htm","@Title=修改菜单") %>
</head>
<body>
    <form id="form1" method="post">
    <div class="Form">
         <div class="fi">
            <label>
                <span style="color:Red;">*</span>标题：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Title" value="<%=Model.Title %>" required="true" />
            </div>
        </div>

        <div class="fi">
            <label>
               英文标题：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" value="<%=Model.EnglishTitle %>" name="EnglishTitle" />
            </div>
        </div>
        <div class="fi">
            <label>
                页面地址：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="PageUrl" value="<%= Model.PageUrl%>"  />
            </div>
        </div>
        <div class="fi">
            <label>
                 跳转方式：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="LocationType"  required="true" value="<%=Model.LocationType %>"/>
            </div>
        </div>
        <div class="fi">
            <label>
                小图标：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="IconUrl" value="<%=Model.IconUrl %>"></input>
            </div>
        </div>
        <div class="fi">
            <label>
                大图标：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="ImageUrl" value="<%=Model.ImageUrl %>"/>
            </div>
        </div>
        <div class="fi">
            <label>
                顺序号：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Ordinal" value="<%=Model.Ordinal %>" />
            </div>
        </div>
        
        <div class="fi">
            <label>
                是否启用：</label>
            <div class="cont">
              <input class="easyui-validatebox" type="checkbox" name="IsEnable" value="true" <% if(Model.IsEnable){ %> checked <% } %>/>
             
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
