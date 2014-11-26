<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.List" %>

<%@ Import Namespace="SZP.Web.UI" %>
<div class="datagrid-toolbar">
    <a class="easyui-linkbutton" iconcls="icon-add" plain="true" href="javascript:void(0)"
        onclick="add('<%=Request["parentId"] %>','<%=Request["depth"] %>')">新增</a>
</div>
<table class="iList">
    <thead>
        <tr>
            <th>
                菜单名称
            </th>
            <th>
                英文名称
            </th>
            <th>
                页面地址
            </th>
            <th>
                跳转方式
            </th>
            <th>
                Icon地址
            </th>
            <th>
                图片地址
            </th>
            <th>
                是否启用
            </th>
            <th>
                顺序号
            </th>
            <th>
                操作
            </th>
        </tr>
    </thead>
    <tbody id="tbody">
        <% foreach (SZP.Entity.SysMenu item in ((SZP.Core.PagedList<SZP.Entity.SysMenu>)Context.Items["list"]).Data)
           { %>
        <tr onclick="GetOperationList(' <%=item.Id %>','<%=item.Title %>')">
            <td>
                <%=item.Title %>
            </td>
            <td>
                <%=item.EnglishTitle %>
            </td>
            <td>
                <%=item.PageUrl %>
            </td>
            <td>
                <%=item.LocationType %>
            </td>
            <td>
                <%  if (!string.IsNullOrEmpty(item.IconUrl))
                    { %>
                <img src='<%=item.IconUrl %>' alt="Icon" width="16px" height="16px" />
                <%} %>
            </td>
            <td>
                <%  if (!string.IsNullOrEmpty(item.ImageUrl))
                    { %>
                <img src="<%=item.ImageUrl %>" alt="Image" width="40px" height="40px" />
                <%} %>
            </td>
            <td>
                <% =item.IsEnableText %>
            </td>
            <td>
                <%= item.Ordinal %>
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
        <% } %>
    </tbody>
</table>
<script type="text/javascript">
    $(function () {
        $("#tbody tr").mouseover(function () {
            $(this).addClass("hover");
        })
        $("#tbody tr").mouseout(function () {
            $(this).removeClass("hover");
        })

        //单击行选中是事件
        $("#tbody tr").bind("click", function () {
            $("#tbody tr").removeClass("select");
            $(this).addClass('select');
        })
    });
    </script>
    