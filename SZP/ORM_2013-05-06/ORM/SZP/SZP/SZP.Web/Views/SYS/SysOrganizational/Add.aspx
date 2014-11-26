<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SZP.Web.Views.SYS.SysOrganizational.Add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <% =SZP.Web .UI.HTemplate.Template("~/Views/Shared/_Add.htm","@Title=添加组织机构") %>
</head>
<body>
    <form id="form1" method="post">
    <div class="Form">
         <div class="fi">
            <label>
                <span style="color:Red;">*</span>机构名称：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Name" required="true" />
            </div>
        </div>

        <div class="fi">
            <label>
               英文名称：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="EnglishName"  required="true" />
            </div>
        </div>
        <div class="fi">
            <label>
                地址：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Adddrss"  required="true"  />
            </div>
        </div>
        <div class="fi">
            <label>
                联系电话：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Phone"  required="true" />
            </div>
        </div>
        <div class="fi">
            <label>
                传真：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Fax"  required="true" ></input>
            </div>
        </div>
        <div class="fi">
            <label>
                备注：</label>
            <div class="cont">
                <input class="easyui-validatebox" type="text" name="Remark" />
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
