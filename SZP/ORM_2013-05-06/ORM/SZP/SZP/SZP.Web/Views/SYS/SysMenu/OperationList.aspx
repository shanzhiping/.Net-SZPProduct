<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OperationList.aspx.cs"
    Inherits="SZP.Web.Views.SYS.SysMenu.OperationList" %>
<%@ Import Namespace="SZP.Web.UI" %>
<div class="datagrid-toolbar">
    <a class="easyui-linkbutton"  iconcls="icon-add" plain="true" href="javascript:void(0)"
      onclick="operationAdd()" >添加</a>
</div>
            <table class="iList">
                <thead>
                    <tr>
                        <th>
                            操作标题
                        </th>
                        <th>
                            英文标题
                        </th>
                        <th>
                            控件ID
                        </th>
                        <th>
                            排序
                        </th>
                        <th>
                            是否启用
                        </th>                        
                        <th>
                            操作
                        </th>
                    </tr>
                </thead>
                <tbody id="tOperationBody">
        <%if (Context.Items["list"] != null)
          {
              foreach (SZP.Entity.SysOperation item in ((SZP.Core.PagedList<SZP.Entity.SysOperation>)Context.Items["list"]).Data)
              { %>
        <tr>
            <td>
                <%=item.Title%>
            </td>
            <td>
                <%=item.EnglishTitle%>
            </td>
            <td>
                <%=item.ControlId%>
            </td>
            <td>
                <%=item.Ordinal%>
            </td>
            <td>
                <%=item.IsEnable%>
            </td>
            <td>
                <a href="javascript:void(0);" onclick="detail('<%=item.Id %>')">
                    <img src="/Scripts/easyui/themes/default/SZP/images/detail.png" style="border: 0px;"
                        alt="查看" /></a> <a href="javascript:void(0);" onclick="edit('<%=item.Id %>')">
                            <img src="/Scripts/easyui/themes/default/SZP/images/edit.gif" style="border: 0px;"
                                alt="修改" /></a> <a href="javascript:void(0);" onclick="del('<%=item.Id %>','<% = item.Title %>')">
                                    <img src="/Scripts/easyui/themes/default/SZP/images/del.gif" style="border: 0px;"
                                        alt="删除" /></a>
            </td>
        </tr>
        <% }
          } %>
    </tbody>
</table>
<script type="text/javascript">
    var meunId;
    var meunName;
    $(function () {
        $("#tOperationBody tr").mouseover(function () {
            $(this).addClass("hover");
        })
        $("#tOperationBody tr").mouseout(function () {
            $(this).removeClass("hover");
        })

        $("#")

        //单击行选中是事件
        $("#tOperationBody tr").bind("click", function () {
            $("#tOperationBody tr").removeClass("select");
            $(this).addClass('select');
        })
    });

    function operationAdd() {
        if (meunId == null) {
            $.messager.alert("提示信息", "请选择一行菜单进行操作！");
            return;
        }
        openWinThis('/Views/SYS/Sysmenu/OperationAdd.aspx?parentId=<%=Request["parentId"] %>', 450, 410, '添加—' + meunName + '操作');
    }

    function operationDetail(id) {
        openWinThis('/Views/SYS/Sysmenu/OperationDetail.aspx' + '?id=' + id, 450, 445, '查看—' + meunName + '操作');
    }

    function operationEdit(id) {
        openWinThis('/Views/SYS/Sysmenu/OperationEdit.aspx' + '?id=' + id, 450, 410, '修改—' + meunName + '操作');
    }

    function operationDel(id, Name) {
        if (confirm("确定删除【" + Name + "】吗？")) {
            location.href = '/Views/SYS/Sysmenu/OperationDelete.aspx?id=' + id;
        }
    }

    function GetOperationList(id,name) {
        meunId = id;
        meunName = name;
        $("#south").panel({
            title:name+'—操作',
            href: "/Views/SYS/SysMenu/OperationList.aspx?parentId=" + id
        });
    }
    </script>
