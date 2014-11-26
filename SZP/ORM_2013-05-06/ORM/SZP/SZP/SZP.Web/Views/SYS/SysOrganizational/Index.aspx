<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SZP.Web.Views.SYS.SysOrganizational.Index" %>
<%@  Import   Namespace="SZP.Web.UI"   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <% =HTemplate.Template("~/Views/Shared/_Layout.htm","@Title=组织机构管理") %>
    <script type="text/javascript">
        function add() {
            openWinThis('/Views/SYS/SysOrganizational/Add.aspx', 450, 410, '添加组织机构');
        }
       
        function detail(id) {
            openWinThis('/Views/SYS/SysOrganizational/Detail.aspx' + '?id=' + id, 450, 445, '查看组织机构');
        }

        function edit(id) {
            openWinThis('/Views/SYS/SysOrganizational/Edit.aspx' + '?id=' + id, 450, 410, '修改通讯录');
        }

        function del(id,Name) {
            if (confirm("确定删除【"+Name+"】吗？")) {
                location.href = '/Views/SYS/SysOrganizational/Delete.aspx?id=' + id;
            } 
        }
    </script>
</head>
<body  style="padding:0px;margin:0px">
   <div class="easyui-layout" fit="true">
        <!--弹出窗口-->
    <div id="pwin">
    </div>
    <!--ToolBar-->
    <div region="north">
        <div class="datagrid-toolbar">
            <a class="easyui-linkbutton" iconcls="icon-add" plain="true" href="javascript:void(0)"
                onclick="javascript:add()">添加组织机构</a>   
                    
        </div>
    </div>
    <!--center-->
    <div region="center" id="divDataList">
        <table class="iList">
    <thead>
        <tr>            
            <th>
                Name
            </th>
            <th>
                EnglishName
            </th>
            <th>
                Addrss
            </th>
            <th>
                Fax
            </th>
            <th>
                Remark
            </th>
            <th>
                CreatedBy
            </th>
            <th>
                CreateTime
            </th>
            <th class="end">
                LastupdateTime
            </th>
            <th>
            操作
            </th>
        </tr>
    </thead>
    <tbody id="tbody">
        <% foreach (SZP.Entity.SysOrganizational item in ((SZP.Core.PagedList<SZP.Entity.SysOrganizational>)Context.Items["list"]).Data)
           {%>
            <tr>
                <td>
                    <% = item.Name %>
                </td>
                <td>
                    <% =item.EnglishName %>
                </td>
                <td>
                    <% =item.Adddrss %>
                </td>
                <td>
                    <% =item.Fax %>
                </td>
                <td>
                    <%=item.Remark %>
                </td>
                <td>
                    <%=item.CreatedBy %>
                </td>
                <td>
                    <%=item.CreatedTime.ToString() %>
                </td>
                <td>
                    <%=item.LastupdateTime.ToString() %>
                </td>
                <td>
                <a href="javascript:void(0);" onclick="detail('<%=item.Id %>')">
                        <img src="/Scripts/easyui/themes/default/SZP/images/detail.png"  style="border:0px;" alt="查看" /></a> 
                <a href="javascript:void(0);" onclick="edit('<%=item.Id %>')">
                            <img src="/Scripts/easyui/themes/default/SZP/images/edit.gif" style="border:0px;" alt="修改" /></a>                     
                <a href="javascript:void(0);" onclick="del('<%=item.Id %>','<% = item.Name %>')">
                        <img src="/Scripts/easyui/themes/default/SZP/images/del.gif"  style="border:0px;" alt="删除" /></a> 
                </td>
            </tr>
       <%               
           } %>
      </tbody>
</table>
<div class="pager">
    <%=PageList.GetPageIndex(((SZP.Core.PagedList<SZP.Entity.SysOrganizational>)Context.Items["list"]).PageCount, ((SZP.Core.PagedList<SZP.Entity.SysOrganizational>)Context.Items["list"]).PageId, "url", "")%>
</div>
    </div>
</div>
</body>
</html>
