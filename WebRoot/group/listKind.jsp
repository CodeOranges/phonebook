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
    
    <title>My JSP 'listKind.jsp' starting page</title>
    
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
	background-color: #fffdf7;
}
#main {
	height: 600px;
	width: 800px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 100px;
	background-color: #414461;
}
#main #top {
	font-family: "微软雅黑";
	font-size: 24px;
	font-weight: bold;
	color: #fffdf7;
}
#main #top table {
	font-family: "微软雅黑";
	font-size: 24px;
	font-weight: bold;
	color: #fffdf7;
	text-align: center;
	margin-top: 10px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#main #bottom {
	font-family: "微软雅黑";
	font-size: 20px;
	font-weight: bolder;
	color: #fffdf7;
}
#main #bottom table {
	font-family: "微软雅黑";
	font-size: 20px;
	font-weight: bolder;
	color: #fffdf7;
	text-align: center;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
</style>
  </head>
  
<body>
<div id="main">
  <div id="top">
    <table width="0" border="0" cellpadding="0">
      <tr>
        <td><img src="img/groups/Table-128.png" width="128" height="128" /></td>
      </tr>
      <tr>
        <td>查看对应分组名</td>
      </tr>
    </table>
  </div>
  <div id="bottom">——————————————————————————————————————
    <table width="0" border="0" cellpadding="0">
      <tr>
        <td>联系组名称</td>
      </tr>
      <c:forEach items="${listKind }" var="group">
      <tr>
        <td>${group.kindName}</td>
      </tr>
      </c:forEach>
    </table>
  </div>
</div>
</body>
</html>
