<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.Index" %>

<%@ Import Namespace="SZP.Web.UI" %>
<html>
<head>
    <% =HTemplate.Template("~/Views/Shared/_Layout.htm","@Title=菜单管理") %>
    <script type="text/javascript">
        function add(parentId, depth) {
            openWinThis('/Views/SYS/Sysmenu/Add.aspx?parentId=' + parentId + '&depth=' + depth, 450, 410, '添加菜单');
        }

        function detail(id) {
            openWinThis('/Views/SYS/Sysmenu/Detail.aspx' + '?id=' + id, 450, 445, '查看菜单');
        }

        function edit(id) {
            openWinThis('/Views/SYS/Sysmenu/Edit.aspx' + '?id=' + id, 450, 410, '修改菜单');
        }

        function del(id, Name) {
            if (confirm("确定删除【" + Name + "】吗？")) {
                // location.href = '/Views/SYS/Sysmenu/Delete.aspx?id=' + id;
                $.ajax({
                    type: "get",
                    url: '/Views/SYS/Sysmenu/Delete.aspx',
                    data: "id=" + id,
                    success: function (data) {
                        Messager('删除提示', "删除成功");
                        GetList(data, '');
                        $("#west").panel({
                            href: "/Views/SYS/SysMenu/Meun.aspx"
                        });
                    },
                    error: function () {
                        alert("怎么出错了呢");
                    }
                });

            }
        }

        function GetList(id, depth) {
            $("#center").panel({
                href: "/Views/SYS/SysMenu/List.aspx?parentId=" + id + "&depth=" + depth
            });
            $("#south").panel({
                title: '菜单操作',
                href: "/Views/SYS/SysMenu/OperationList.aspx"
            });

        }

        function GetOperationList(id) {
            $("#south").panel({
                href: "/Views/SYS/SysMenu/OperationList.aspx?parentId=" + id
            });
        }
    </script>
</head>
<body class="easyui-layout" style="overflow-y: hidden" scroll="no">
    <!--弹出窗口-->
    <div id="pwin">
    </div>
    <!--菜单树-->
    <div data-options="region:'west',border:true,split:true,href:'/Views/SYS/SysMenu/Meun.aspx'"
        style="width: 200px;" id="west">
    </div>
    <!--菜单列表-->
    <div data-options="region:'center',title:'菜单列表',iconCls:'icon-ok'">
        <div class="easyui-layout" data-options="fit:true">
    
            <div data-options="region:'center',border:false,href:'/Views/SYS/SysMenu/List.aspx'"
                id="center">
                    
            </div>
            <div data-options="region:'south',title:'菜单操作',border:false,href:'/Views/SYS/SysMenu/OperationList.aspx'"
                id="south" style="height: 250px;">
            </div>
        </div>
    </div>
</body>
</html>
