<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Meun.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.Meun" %>

 <div class="easyui-panel" title="菜单树" data-options="fit:true,border:false">
            <ul class="easyui-tree">
                <li><span><a href="?">顶部</a></span>
                    <ul>
                        <%=GetTreeMenu(list) %>
                    </ul>
                </li>
            </ul>
        </div>
