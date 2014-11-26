<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OperationEdit.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.OperationEdit" %>
<%@  Import   Namespace="SZP.Web.UI"   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <% =SZP.Web .UI.HTemplate.Template("~/Views/Shared/_Edit.htm","@Title=修改菜单操作") %>
</head>
<body>
     <form id="form1" method="post">
    <div class="Form">
         <div class="fi">
            <label>
                <span style="color:Red;">*</span>操作名称：</label>
            <div class="cont">
                <input class="easyui-validatebox" value="<%=Model.Title %>" type="text" name="Title" required="true" />
            </div>
        </div>

        <div class="fi">
            <label>
               英文名称：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" value="<%=Model.EnglishTitle %>" name="EnglishTitle" />
            </div>
        </div>
        <div class="fi">
            <label>
                控件ID：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" value="<%=Model.ControlId %>" name="ControlId"  />
            </div>
        </div>        
        <div class="fi">
            <label>
                Icon图标：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" value="<%=Model.IconUrl %>" name="IconUrl" ></input>
            </div>
        </div>
        <div class="fi">
            <label>
                顺序号：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" value="<%=Model.Ordinal %>" name="Ordinal" />
            </div>
        </div>        
        <div class="fi">
            <label>
                是否启用：</label>
             <div class="cont">
              <input class="easyui-validatebox" type="radio" name="IsEnable" value="true" <% if(Model.IsEnable){ %> checked <% } %>/> 是
              <input class="easyui-validatebox" type="radio" name="IsEnable" value="false" <% if(!Model.IsEnable){ %> checked <% } %>/> 否
              
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
