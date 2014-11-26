<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OperationAdd.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.OperationAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <% =SZP.Web .UI.HTemplate.Template("~/Views/Shared/_Add.htm","@Title=添加菜单操作") %>
</head>
<body>
    <form id="form1" method="post">
    <div class="Form">
         <div class="fi">
            <label>
                <span style="color:Red;">*</span>操作名称：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Title" required="true" />
            </div>
        </div>

        <div class="fi">
            <label>
               英文名称：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="EnglishTitle" />
            </div>
        </div>
        <div class="fi">
            <label>
                控件ID：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="ControlId"  />
            </div>
        </div>        
        <div class="fi">
            <label>
                Icon图标：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="IconUrl" ></input>
            </div>
        </div>
        <div class="fi">
            <label>
                顺序号：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Ordinal" />
            </div>
        </div>        
        <div class="fi">
            <label>
                是否启用：</label>
            <div class="cont">
                 <input class="easyui-validatebox" type="radio" name="IsEnable" value="true" checked="checked"/> 是
                 <input class="easyui-validatebox" type="radio" name="IsEnable" value="false"/> 否         
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
