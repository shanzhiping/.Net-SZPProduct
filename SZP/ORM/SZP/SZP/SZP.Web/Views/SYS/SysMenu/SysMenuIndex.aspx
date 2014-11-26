<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SysMenuIndex.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.SysMenuIndex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="../../../Scripts/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
 <link href="../../../Scripts/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />  
    <script src="../../../Scripts/lib/jquery/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="../../../Scripts/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
    <script src="../../../Scripts/lib/ligerUI/js/plugins/ligerGrid.js" type="text/javascript"></script>  
    
    <script type="text/javascript">
        var manager;
        $(function () {
            window['g'] =
            manager = $("#maingrid").ligerGrid({
                columns: [
                { display: '菜单标题', name: 'title', width: 150, align: 'left' },
                { display: '英文标题', name: 'EnglishTiTle', width: 150, type: 'int', align: 'left' },
                { display: '页面路径', name: 'PageUrl', width: 250, align: 'left' },
                { display: '跳转方式', name: 'LocationType', width: 100, align: 'left' },
                { display: '当前级别', name: 'Depth', width: 100, align: 'left' },
                { display: 'Icon路径', name: 'IconUrl', width: 250, align: 'left' },
                { display: 'Image路径', name: 'ImageUrl', width: 250, align: 'left' },
                { display: '排序', name: 'Ordinal', width: 50, align: 'left' },
                { display: '是否启用', name: 'IsEnable', width: 50, align: 'left' }
                ], width: '100%', pageSizeOptions: [5, 10, 15, 20], height: '97%',
                url: 'SysMenuIndex.aspx?Action=GetData',
                dataAction: 'server', //服务器排序
                usePager: true,       //服务器分页
                pageSize: 20,
                alternatingRow: false,
                tree: { columnName: 'name' }
            }
            );
        });


        function getSelected() {
            var row = manager.getSelectedRow();
            if (!row) { alert('请选择行'); return; }
            alert(JSON.stringify(row));
        } 
        
    </script>
</head>
<body> 
<div>  
  
   <a class="l-button" style="width:120px;float:left; margin-left:10px;" onclick="getSelected()">获取值</a>

   <div class="l-clear"></div>
 
</div>

    <div id="maingrid"></div>  
</body>
</html>