<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.Add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <% =SZP.Web .UI.HTemplate.Template("~/Views/Shared/_Add.htm","@Title=添加菜单") %>
</head>
<body>
    <form id="form1" method="post">
    <div class="Form">
         <div class="fi">
            <label>
                <span style="color:Red;">*</span>标题：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Title" required="true" />
            </div>
        </div>

        <div class="fi">
            <label>
               英文标题：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="EnglishTitle" />
            </div>
        </div>
        <div class="fi">
            <label>
                页面地址：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="PageUrl"  />
            </div>
        </div>
        <div class="fi">
            <label>
                 跳转方式：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="LocationType"  required="true" />
            </div>
        </div>
        <div class="fi">
            <label>
                小图标：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="IconUrl" ></input>
            </div>
        </div>
        <div class="fi">
            <label>
                大图标：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="ImageUrl" />
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
              <input class="easyui-validatebox" type="checkbox" name="IsEnable" value="true" />
             
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
