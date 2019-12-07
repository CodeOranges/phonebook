<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectPersonName.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	background-color: #FFFDF7;
	font-family: "微软雅黑";
	font-size: 22px;
	color: #FFFDF7;
}
#main {
	background-color: #414461;
	width: 900px;
	height: 700px;
	margin-top: 100px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#table1 {
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	text-align: center;
}
#table2 {
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	font-family: "微软雅黑";
	font-size: 22px;
	font-weight: bolder;
	color: #414461;
	background-color: #fffdf7;
}
#main #bottom #table2 tr td {
	padding: 10px;
}
a {
	text-decoration: none;
	color: #414461;
}
a:hover {
	color: #F36;
}
</style>
  </head>
  
  <body>
<div id="main">
  <div id="top">
    <table border="0" cellpadding="0" id="table1">
      <tr>
        <td><a href="group/list.jsp"><img src="img/groups/People-128.png" width="128" height="128" /></a></td>
      </tr>
      <tr>
        <td><p>该联系组下的联系人</p></td>
      </tr>
    </table>
  </div>
  <div id="bottom">———————————————————————————————————————
    <table border="0" cellpadding="0" id="table2">
      <tr>
        <td>联系人姓名</td>
        <td>操作</td>
      </tr>
      <c:forEach items="${list }" var="person">
      <tr>
        <td>${person.personName }</td>
        <td><a href="deleteName.do?personId=${person.personId }">删除</a></td>
      </tr>
      </c:forEach>
    </table>
  </div>
</div>
</body>
</html>
