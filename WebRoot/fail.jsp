<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fail.jsp' starting page</title>
    
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
	height: 300px;
	width: 300px;
	margin-top: 200px;
	margin-right: auto;
	margin-bottom: auto;
	margin-left: auto;
}
#main table {
	text-align: center;
	font-family: "微软雅黑";
	font-size: 36px;
	font-weight: bold;
	color: #414461;
	margin-top: 30px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
</style>
  </head>
  
  <body>
<div id="main">
  <table border="0" cellpadding="0">
    <tr>
      <td><img src="img/menu/Close-128.png" width="128" height="128" /></td>
    </tr>
    <tr>
      <td>操作失败</td>
    </tr>
  </table>
</div>
</body>
</html>
