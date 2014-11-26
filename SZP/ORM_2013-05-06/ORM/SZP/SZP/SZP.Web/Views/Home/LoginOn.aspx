<%@ Page Language="C#" autoEventWireup="true" CodeBehind="LoginOn.aspx.cs" Inherits="SZP.Web.Views.Home.LoginOn" %>

<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>用户登录</title>
<link href="../../Images/Home/Login/images/Default.css" type="text/css" rel="stylesheet"/>
<link href="../../Images/Home/Login/images/xtree.css" type="text/css" rel="stylesheet"/>
<link href="../../Images/Home/Login/images/User_Login.css" type="text/css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<meta content="MSHTML 6.00.6000.16674" name="GENERaTOR"/></head>
<body id="userlogin_body">
<form id="form1" runat="server">
<div></div>

<div id="user_login">
<dl>
  <dd id="user_top">
  <ul>
    <li class="user_top_l"></li>
    <li class="user_top_c"></li>
    <li class="user_top_r"></li></ul>
  <dd id="user_main">
  <ul>
    <li class="user_main_l"></li>
    <li class="user_main_c">
    <div class="user_main_box">
    <ul>
      <li class="user_main_text">用户名： </li>
      <li class="user_main_input"><input class="TxtUserNameCssClass" id="TxtUserName" 
      maxLength="20" name="TxtUserName" /> </li></ul>
    <ul>
      <li class="user_main_text">密 码： </li>
      <li class="user_main_input"><input class="TxtPasswordCssClass" id="TxtPassword" 
      type="password" name="TxtPassword"> </li></ul>
    <ul>
      <li class="user_main_text">组织结构： </li>
      <li class="user_main_input">
      <select id="DroporganizationalId" name="DroporganizationalId"> 
        <% foreach (SZP.Entity.SysOrganizational item in list)
           {
               %>
               <option value='<%= item.Id %>'><%= item.Name %></option> 
               <%
           } %>        
        </select> </li></ul>
      <ul>
      <li class="user_main_text"></li>
      <li  class="user_main_input"> <span style="font-size:14; color :Red ;" id="spanText" runat ="server"></span></li>
      </ul>
      </div>
      
      </li>
    <li class="user_main_r"><input class="IbtnEnterCssClass" id="IbtnEnter" 
    style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
    type="image" src="../../Images/Home/Login/images/user_botton.gif" name="IbtnEnter"> </li></ul>
  <DD id="user_bottom">
  <ul>
    <li class="user_bottom_l"></li>
    <li class="user_bottom_c"></li>
    <li class="user_bottom_r"></li></ul></DD></dl></div><span id="ValrUserName" 
style="DISPLaY: none; COLOR: red"></span><span id="ValrPassword" 
style="DISPLaY: none; COLOR: red"></span><span id="ValrValidateCode" 
style="DISPLaY: none; COLOR: red"></span>
<div id="ValidationSummary1" style="DISPLaY: none; COLOR: red"></div>

<div></div>

</form></body></html>
