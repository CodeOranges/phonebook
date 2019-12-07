<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
	height: 500px;
	width: 650px;
	margin-top: 150px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#main #top {
	font-family: "微软雅黑";
	font-size: 36px;
	font-weight: bold;
	color: #414461;
	text-align: center;
}
#main #bottom #form1 table {
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	font-family: "微软雅黑";
	font-size: 20px;
	font-weight: bolder;
	color: #414461;
	text-align: center;
}
#main #bottom #form1 table tr td {
	padding: 10px;
}
#main #bottom #form1 table tr td #textfield {
	height: 40px;
	width: 200px;
	font-family: "微软雅黑";
	font-size: 18px;
	font-weight: bolder;
	color: #fffdf7;
	border-radius: 20px;
	padding-left: 10px;
}
#main #bottom #form1 table tr td #button {
	height: 40px;
	width: 80px;
	font-family: "微软雅黑";
	font-size: 18px;
	font-weight: bold;
	color: #fffdf7;
	border-radius: 20px;
	background-color: #414461;
}
</style>
  </head>
  
<body>
 <jsp:useBean id="command" class="com.entity.User" scope="request"></jsp:useBean>
<div id="main">
  <div id="top">
    <p>登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 录</p>
    <p>————————————————</p>
  </div>
  <div id="bottom">
    <form:form id="form1" action="login.do" method="post">
      <table width="0" border="0" cellpadding="0">
        <tr>
          <td><img src="img/login/User-Login-48.png" width="48" height="48" /></td>
          <td>用户名</td>
          <td><label for="textfield"></label>
          <form:input path="username" id="textfield" style="background-color:#414461"/></td>
        </tr>
        <tr>
          <td><img src="img/login/Login-01-48.png" width="48" height="48" /></td>
          <td>密码</td>
          <td><label for="textfield2"></label>
          <form:password path="password" id="textfield" style="background-color:#414461"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="提交" /></td>
          <td><input type="reset" name="button2" id="button" value="重置" /></td>
        </tr>
      </table>
    </form:form>
  </div>
</div>
</body>
</html>
