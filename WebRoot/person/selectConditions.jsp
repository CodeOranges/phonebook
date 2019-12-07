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
    
    <title>My JSP 'selectConditions.jsp' starting page</title>
    
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
	background-color: #414461;
}
#main {
	height: 600px;
	width: 800px;
	margin-top: 100px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	background-color: #fffdf7;
}
#main #bottom #form1 table {
	font-family: "微软雅黑";
	font-size: 16px;
	font-weight: bolder;
	color: #414461;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	text-align: center;
}
#main #bottom #form1 table tr td #textfield {
	height: 30px;
	width: 200px;
	font-family: "微软雅黑";
	font-size: 16px;
	font-weight: bolder;
	color: #FFFDF7;
	padding-left: 10px;
	border-radius:20px;
}
#main #bottom #form1 table tr td #button {
	font-family: "微软雅黑";
	font-size: 16px;
	font-weight: bold;
	color: #fffdf7;
	height: 30px;
	width: 60px;
	border-radius:15px;
}
#main #bottom #form1 table tr td {
	padding: 10px;
}
#main #top {
	font-family: "微软雅黑";
	font-size: 18px;
	font-weight: bolder;
	color: #414461;
}
#main #top table {
	margin-top: 15px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	text-align: center;
}
</style>
  </head>
  
  <body>
    <jsp:useBean id="command" class="com.entity.Person" scope="request"></jsp:useBean>
<div id="main">
  <div id="top">
    <table width="0" border="0" cellpadding="0">
      <tr>
        <td><a href="menu.jsp"><img src="img/person/User-Find-128.png" width="128" height="128" /></a></td>
      </tr>
      <tr>
        <td>多条件查询</td>
      </tr>
    </table>
    <p>——————————————————————————————————————————</p>
  </div>
  <div id="bottom">
     <form:form id="form1" action="selectConditions.do" method="post">
      <table width="0" border="0" cellpadding="0">
        <tr>
          <td><img src="img/person/Smile-32.png" width="32" height="32" /></td>
          <td>联系人姓名</td>
          <td><label for="textfield"></label>
          <form:input path="personName" id="textfield" style="background-color:#414461"/></td>
        </tr>
        <tr>
          <td><img src="img/person/Wink-32.png" width="32" height="32" /></td>
          <td>联系人昵称</td>
          <td><label for="textfield2"></label>
          <form:input path="personNickName" id="textfield" style="background-color:#414461"/></td>
        </tr>
        <tr>
          <td><img src="img/person/Map-Location-32.png" width="32" height="32" /></td>
          <td>联系人地址</td>
          <td><label for="textfield3"></label>
          <form:input path="personAddress" id="textfield" style="background-color:#414461"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="提交" style="background-color:#414461"/></td>
          <td><input type="reset" name="button2" id="button" value="重置" style="background-color:#414461"/></td>
        </tr>
      </table>
    </form:form>
  </div>
</div>
</body>
</html>
