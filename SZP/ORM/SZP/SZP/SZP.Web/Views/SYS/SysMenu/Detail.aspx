<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="SZP.Web.Views.SYS.SysMenu.Detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <%=SZP.Web.UI.HTemplate.Template("~/Views/Shared/_Detail.htm", "@Title=查看菜单信息")%>
</head>
<body>
<div class="Form">
       <div class="fi">
            <label>
                <span style="color:Red;">*</span>标题：</label>
            <div class="cont">
                <%=Model.Title %>
            </div>
        </div>

        <div class="fi">
            <label>
               英文标题：</label>
            <div class="cont">
                <%=Model.EnglishTitle %>
            </div>
        </div>
        <div class="fi">
            <label>
                页面地址：</label>
            <div class="cont">
               <%= Model.PageUrl%>
            </div>
        </div>
        <div class="fi">
            <label>
                 跳转方式：</label>
            <div class="cont">
                <%=Model.LocationType %>
            </div>
        </div>
        <div class="fi"  style=" height:20px;">
            <label>
                小图标：</label>
            <div class="cont">
                <% if (!string.IsNullOrEmpty(Model.IconUrl)) { %>
                <img src='<%=Model.IconUrl %>' alt="Icon" width="16px" height="16px" />
                <%} %>
            </div>
        </div>
        <div class="fi" style=" height:50px;">
            <label>
                大图标：</label>
            <div class="cont">
                <%if (!string.IsNullOrEmpty(Model.ImageUrl)) {                   
                  %>
                   <img src="<%=Model.ImageUrl %>" alt="Image" width="40px" height="40px" />
                  <%} %>
            </div>
        </div>
        <div class="fi">
            <label>
                顺序号：</label>
            <div class="cont">
                <%=Model.Ordinal %>
            </div>
        </div>
        
        <div class="fi">
            <label>
                是否启用：</label>
            <div class="cont">
              <%=Model.IsEnableText %>
             
            </div>
        </div>
          <div class="btn">
                <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">
                    取消</a>
        </div>
    </div>
</body>
</html>
