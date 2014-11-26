<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SZP.Web.Views.Home.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Scripts/easyui/themes/default/SZP/style.css" rel="stylesheet" type="text/css" />
    <link href="../../Scripts/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../../Scripts/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/easyui/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../../Scripts/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="../../Scripts/easyui/easy_init.js" type="text/javascript"></script>
    <script src="../../Scripts/easyui/jquery.unobtrusive-ajax.min.js" type="text/javascript"></script>

    <style type="text/css">
    .imgs
    {
        
        }
    </style>
     <script type="text/javascript">

         //设置登录窗口
         function openPwd() {
             $('#w').window({
                 title: '修改密码',
                 width: 300,
                 modal: true,
                 shadow: true,
                 closed: true,
                 height: 160,
                 resizable: true
             });
         }
         //关闭登录窗口
         function closePwd() {
             $('#w').window('close');
         }



         //修改密码
         function serverLogin() {
             var $newpass = $('#txtNewPass');
             var $rePass = $('#txtRePass');

             if ($newpass.val() == '') {
                 msgShow('系统提示', '请输入密码！', 'warning');
                 return false;
             }
             if ($rePass.val() == '') {
                 msgShow('系统提示', '请在一次输入密码！', 'warning');
                 return false;
             }

             if ($newpass.val() != $rePass.val()) {
                 msgShow('系统提示', '两次密码不一至！请重新输入', 'warning');
                 return false;
             }

             $.post('Index.aspx?newpass=' + $newpass.val(), function (msg) {
                 msgShow('系统提示', '恭喜，密码修改成功！<br>您的新密码为：' + msg, 'info');
                 $newpass.val('');
                 $rePass.val('');
//                 close();
             })


             //             $.post('AjaxService/HomeHeaper.ashx?newpass=' + $newpass.val(), function (msg) {
             //                 msgShow('系统提示', '恭喜，密码修改成功！<br>您的新密码为：' + msg, 'info');
             //                 $newpass.val('');
             //                 $rePass.val('');
             ////                 close();
             //             })

         }

         $(function () {

             openPwd();

             $('#editpass').click(function () {
                 $('#w').window('open');
             });

             $('#btnEp').click(function () {
                 serverLogin();
             })

             $('#btnCancel').click(function () { closePwd(); })

             $('#loginOut').click(function () {
                 $.messager.confirm('系统提示', '您确定要退出本次登录吗?', function (r) {

                     if (r) {
                         location.href = 'LoginOut.aspx';
                     }
                 });
             })
         });       

    </script>
</head>
<body  class="easyui-layout" style="overflow-y: hidden" scroll="no">
    <noscript>
        <div style="position: absolute; z-index: 100000; height: 2046px; top: 0px; left: 0px;
            width: 100%; background: white; text-align: center;">
            <img src="images/noscript.gif" alt='抱歉，请开启脚本支持！' />
        </div>
    </noscript>
     <div region="north" split="true" border="false" style="overflow: hidden; height: 60px;
        background: url(../../Scripts/easyui/themes/default/SZP/images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px; color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="float: right; padding-right: 20px;" class="head">欢迎 <%=GetUserName %>
            <a href="#" id="editpass">修改密码</a> <a href="#" id="loginOut">安全退出</a></span>
        <span style="padding-left: 10px; font-size: 16px;">
            <img src="../../Scripts/easyui/themes/default/SZP/images/blocks.gif" width="20" height="20" align="absmiddle" />
            SZP企业管理系统</span>
        <div id="header_2">
            <ul>
                 <li><a href="#">合作机构管理系统</a></li>
            </ul>
        </div>
    </div>
    <div region="south" split="true" style="height: 30px; background: #D2E0F2;">
        <div class="footer">
           單志平 版权所有</div>
    </div>
    <div region="west" hide="true" split="true" title="导航菜单" style="width: 180px;" id="west">
        <div id="nav" class="easyui-accordion" fit="true" border="false">
          <% foreach (SZP.Entity.SysMenu item in list)
             {
                 %>
                  <div title="<% =item.Title %>" icon="icon-save" style="overflow: auto; ">
                <ul>
                    <%
                 if (item.Children != null)
                 {
                     foreach (SZP.Entity.SysMenu items in item.Children)
                     {
                          %>
                        <li>
                         <div>
                            <a ref="1" target="<%=items.LocationType %>" rel="<% =items.PageUrl %>"><img src="<%=items.IconUrl %>" class="imgs" /><span class="nav"><% =items.Title%></span></a></div>
                         </li>                     
                      <% }
                 } %>                   
                </ul>
            </div>
            <%  } %>           
        </div>
    </div>
    <div id="mainPanle" region="center" style="background: #eee; overflow-y: hidden">
        <div id="tabs" class="easyui-tabs" fit="true" border="false">
            <div title="欢迎使用" style="padding: 20px; overflow: hidden; color: red;">
                <div style="font-size: 20px; font-weight: bold; margin-top: 100px; text-align: center;">
                   <%=GetWCFContect %></div>
            </div>
        </div>
    </div>
    <div id="pwin"></div>

    <div id="w" class="easyui-window" title="修改密码" collapsible="false" minimizable="false"
        maximizable="false" icon="icon-save" style="width: 300px; height: 150px; padding: 5px;
        background: #fafafa;">
        <div class="easyui-layout" fit="true">

            <div region="center" border="false" style="padding: 10px; background: #fff; border: 1px solid #ccc;">
                <table cellpadding="3">
                    <tr>
                        <td>
                            新密码：
                        </td>
                        <td>
                            <input id="txtNewPass" type="Password" name="txtNewPass" class="txt01" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            确认密码：
                        </td>
                        <td>
                            <input id="txtRePass" type="Password" name="txtRePass" class="txt01" />
                        </td>
                    </tr>
                </table>
            </div>
            <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;">
                <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" id="btnSubmit">确定</a>
                <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">
                    取消</a>
            </div>
        </div>
    </div>
  
    <div id="mm" class="easyui-menu" style="width: 150px;">
        <div id="mm-tabupdate">
            刷新</div>
        <div class="menu-sep">
        </div>
        <div id="mm-tabclose">
            关闭</div>
        <div id="mm-tabcloseall">
            全部关闭</div>
        <div id="mm-tabcloseother">
            除此之外全部关闭</div>
        <div class="menu-sep">
        </div>
        <div id="mm-tabcloseright">
            当前页右侧全部关闭</div>
        <div id="mm-tabcloseleft">
            当前页左侧全部关闭</div>
        <div class="menu-sep">
        </div>
        <div id="mm-exit">
            退出</div>
    </div>
</body>
</html>
