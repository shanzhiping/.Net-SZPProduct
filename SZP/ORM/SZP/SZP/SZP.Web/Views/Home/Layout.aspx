<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Layout.aspx.cs" Inherits="SZP.Web.Views.Home.Layout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>jQuery ligerUI 官方网站</title>
    <link href="../../Scripts/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" /> 
    <link href="../../Scripts/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />  
    <link href="../../Images/CSS/index.css" rel="stylesheet" type="text/css" />
    <link href="../../Images/CSS/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Images/CSS/welcome.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/lib/jquery/jquery-1.3.2.min.js" type="text/javascript"></script>    
    <script src="../../Scripts/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script> 
</head>
<body style="text-align:center; background:#F0F0F0; overflow:hidden;">
    <div id="pageloading" style="display:block;"></div> 
    <div id="topmenu" class="l-topmenu">
        <div class="l-topmenu-logo">SZP企业管理系统</div>
        <div class="l-topmenu-welcome"> 
            <span class="l-topmenu-username"></span>欢迎您  &nbsp; 
            [<a href="javascript:f_changepassword()">修改密码</a>] &nbsp; 

             [<a href="javascript:f_login()">切换用户</a>]
            [<a href="login.htm?Action=out">退出</a>] 
        </div> 
        
    </div> 
     <div id="mainbody" class="l-mainbody" style="width:99.2%; margin:0 auto; margin-top:3px;" >
        <div position="left" title="主要菜单" id="mainmenu"></div>  
        <div position="center" id="framecenter"> 
            <div tabid="home" title="我的主页"> 
                <iframe frameborder="0" name="home" id="home" src="welcome.aspx"></iframe>
            </div> 
        </div> 
    </div>
    <div class="l-hidden"><%--<script src="http://s24.cnzz.com/stat.php?id=3923823&web_id=3923823" language="JavaScript"></script>--%></div>
    <script type="text/javascript">
        //几个布局的对象
        var layout, tab, accordion;
        //tabid计数器，保证tabid不会重复
        var tabidcounter = 0;
        //窗口改变时的处理函数
        function f_heightChanged(options) {
            if (tab)
                tab.addHeight(options.diff);
            if (accordion && options.middleHeight - 24 > 0)
                accordion.setHeight(options.middleHeight - 24);
        }
        //增加tab项的函数
        function f_addTab(tabid, text, url) {
            if (!tab) return;
            if (!tabid) {
                tabidcounter++;
                tabid = "tabid" + tabidcounter;
            }
            tab.addTabItem({ tabid: tabid, text: text, url: url });
        }

        $(document).ready(function () {
           // alert(1);
            //菜单初始化
            $("ul.menulist li").live('click', function () {
                var jitem = $(this);
                var tabid = jitem.attr("Id");
                var url = jitem.attr("PageUrl");
                var locationType = jitem.attr("locationType");
               
                if (!url) return;
                if (!tabid) {
                    tabidcounter++;
                    tabid = "tabid" + tabidcounter;
                    jitem.attr("tabid", tabid);

                    //给url附加menuno
                    if (url.indexOf('?') > -1) url += "&";
                    else url += "?";
                    url += "Id=" + jitem.attr("Id");
                    jitem.attr("url", url);
                }
                f_addTab(tabid, $("span:first", jitem).html(), url);
            }).live('mouseover', function () {
                var jitem = $(this);
                jitem.addClass("over");
            }).live('mouseout', function () {
                var jitem = $(this);
                jitem.removeClass("over");
            });
         
            //布局初始化 
            //layout
            layout = $("#mainbody").ligerLayout({ height: '100%', heightDiff: -3, leftWidth: 140, onHeightChanged: f_heightChanged, minLeftWidth: 120 });
            var bodyHeight = $(".l-layout-center:first").height();
            //Tab
            tab = $("#framecenter").ligerTab({ height: bodyHeight, contextmenu: true });

            
            //预加载dialog的背景图片
            // LG.prevDialogImage();
            // alert(1);
            var mainmenu = $("#mainmenu");
            $.getJSON('Layout.aspx?view=MyMenus&rnd=' + Math.random(), function (menus) {
                $(menus).each(function (i, menu) {
                    var item = $('<div title="' + menu.Title + '"><ul class="menulist"></ul></div>');

                    $(menu.Children).each(function (j, submenu) {
                        var subitem = $('<li><img/><span></span><div class="menuitem-l"></div><div class="menuitem-r"></div></li>');
                        subitem.attr({
                            PageUrl: submenu.PageUrl,
                            Id: submenu.Id,
                            locationType: submenu.LocationType
                        });
//                        alert(submenu.PageUrl);
//                        alert(submenu.Id);
                        $("img", subitem).attr("src", submenu.ImageUrl || submenu.IconUrl);
                        $("span", subitem).html(submenu.Title);

                        $("ul:first", item).append(subitem);
                    });
                    mainmenu.append(item);

                });

                //Accordion
                accordion = $("#mainmenu").ligerAccordion({ height: bodyHeight - 24, speed: null });



                $("#pageloading").hide();
            });


        });
    </script>
</body>
</html>

