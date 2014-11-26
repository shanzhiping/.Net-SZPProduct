<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="SZP.Web.Views.SYS.SysOrganizational.List" %>
<%@ Import Namespace="SZP.Web.UI" %>

<div class="easyui-layout" fit="true">
                <div region="center">
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
                            <% foreach (SysOrganizational item in ((PagedList<SysOrganizational>)Context.Items["list"]).Data)
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
                                        <img src="/Scripts/easyui/themes/default/SZP/images/detail.png" style="border: 0px;"
                                            alt="查看" /></a> <a href="javascript:void(0);" onclick="edit('<%=item.Id %>')">
                                                <img src="/Scripts/easyui/themes/default/SZP/images/edit.gif" style="border: 0px;"
                                                    alt="修改" /></a> <a href="javascript:void(0);" onclick="del('<%=item.Id %>','<% = item.Name %>')">
                                                        <img src="/Scripts/easyui/themes/default/SZP/images/del.gif" style="border: 0px;"
                                                            alt="删除" /></a>
                                </td>
                            </tr>
                            <%               
                           } %>
                        </tbody>
                    </table>
                </div>
                <div data-options="region:'south'" style="height: 45px; text-align: right;">
                    <div class="pager">
                        <%= PageList.GetPageIndex(((PagedList<SysOrganizational>)Context.Items["list"]).PageCount, ((PagedList<SysOrganizational>)Context.Items["list"]).PageId, "url", "")%>
                    </div>
                </div>
            </div>
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
