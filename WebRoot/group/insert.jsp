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
    
    <title>My JSP 'insert.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<style type="text/css">
body {
	background-color: #FFFDF7;
	color: #FFFDF7;
}
#main {
	background-color: #414461;
	font-family: "微软雅黑";
	font-size: 16px;
	height: 500px;
	width: 750px;
	margin-top: 150px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#main #top table {
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	text-align: center;
	font-size: 24px;
	font-weight: bold;
}
#main #bottom #form1 #textfield {
	height: 40px;
	width: 250px;
	background-color: #FFFDF7;
	border-radius: 20px;
	padding-left: 10px;
}
#main #bottom #form1 table tr td #button {
	font-family: "微软雅黑";
	font-size: 18px;
	font-weight: bold;
	color: #414461;
	height: 40px;
	width: 80px;
	border-radius:20px;
}
#table1 {
	font-size: 22px;
	margin-left: 160px;
}
#table2 {
	margin-left: 290px;
}
#main #bottom #form1 table tr td #button2 {
	font-family: "微软雅黑";
	font-size: 18px;
	color: #414461;
	height: 40px;
	width: 80px;
	font-weight: bold;
}
</style>
  </head>
  
  <body>
  <jsp:useBean id="command" class="com.entity.Group" scope="request"></jsp:useBean>
<div id="main">
  <div id="top">
    <table border="0" cellpadding="0">
      <tr>
        <td><a href="menu.jsp"><img src="img/groups/Group-Add-128.png" width="128" height="128" /></a></td>
      </tr>
      <tr>
        <td>添加联系组</td>
      </tr>
    </table>
  </div>
  <div id="bottom">———————————————————————————————————————————
    <form:form id="form1" action="Ginsert.do" method="post">

      <table border="0" cellpadding="0" id="table1">
        <tr>
          <td>分组名：</td>
          <td><form:input path="kindName" id="textfield"/>
          <form:errors path="kindName"></form:errors></td>
        </tr>
      </table>
      <table border="0" cellpadding="0" id="table2">
        <tr>
          <td><input type="submit" name="button" id="button" value="添加" style="background-color:#FFFDF7" /></td>
          <td> <input type="reset" name="button2" id="button" value="重置" style="background-color:#FFFDF7" /></td>
        </tr>
      </table>
      <p>&nbsp;</p>
   </form:form>
  </div>
</div>
</body>
</html>



