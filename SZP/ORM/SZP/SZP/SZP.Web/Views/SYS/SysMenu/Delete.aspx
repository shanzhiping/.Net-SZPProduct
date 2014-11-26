<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.Delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <% =SZP.Web .UI.HTemplate.Template("~/Views/Shared/_Delete.htm","@Title=删除组织机构") %>
    <script type="text/javascript">
        $(function () {
            //window.parent.messager.alert("操作提示", "删除成功", 'info');
            //            alert("删除成功");
            //            location.href = "index.aspx";
            viewTwo('提示信息', '删除成功', '<%=(string)ViewState["RefUrl"] %>');
        });

    </script>
</head>
</html>
