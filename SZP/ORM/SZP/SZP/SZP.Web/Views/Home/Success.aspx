<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="SZP.Web.Views.Home.Success" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>操作成功</title>
    <script src="../../Scripts/easyui/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../../Scripts/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var $parent = self.parent.$;
        var gotoUrl = '<% =System.Web.HttpContext.Current.Request["goUrl"] %>';
        if (gotoUrl != '') {
            self.parent.tabNavigate(gotoUrl);
        }
        else {
            $parent('#mm-tabupdate').click();
        }
        $parent('#pwin').window("close");
    </script>
</head>
</html>
