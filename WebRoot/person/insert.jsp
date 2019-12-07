<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	background-color: #414461;
	font-family: "微软雅黑";
	font-size: 18px;
	color: #414461;
}
#main {
	height: 900px;
	width: 600px;
	margin-top: 30px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	background-color: #FFFDF7;
}
#top {
}
#main #top table {
	text-align: center;
	margin-top: 20px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#bottom {
}
#main #bottom #form1 table tr td #button {
	height: 40px;
	width: 90px;
	font-family: "微软雅黑";
	font-size: 18px;
	color: #FFFDF7;
	border-radius: 20px;
	margin-left: 10px;
}
#main #bottom #form1 #textarea {
	background-color: #414461;
	border-radius: 20px;
	font-family: "微软雅黑";
	color: #FFFDF7;
	font-size: 16px;
	padding: 10px;
	height: 50px;
	width: 210px;
}
#main #bottom #form1 table {
	margin-left: 50px;
}
#main #bottom #form1 table tr td {
	padding: 5px;
}
#main #bottom #form1 table tr td #select2 {
	background-color: #414461;
	height: 25px;
	width: 100px;
	border-radius: 20px;
	color: #FFFDF7;
}
#main #bottom #form1 table tr td #textfield {
	font-family: "微软雅黑";
	color: #FFFDF7;
	background-color: #414461;
	height: 30px;
	width: 210px;
	padding-left: 10px;
	border-radius:20px;
}
</style>
  </head>
  
  <body>
  <jsp:useBean id="command" class="com.entity.Person" scope="request"></jsp:useBean>
<div id="main">
  <div id="top">
    <table border="0" cellpadding="0">
      <tr>
        <td><a href="menu.jsp"><img src="img/person/User-Add-128.png" width="48" height="48" /></a></td>
      </tr>
      <tr>
        <td>新建联系人</td>
      </tr>
    </table>
    <p>—————————————————————————————————</p>
  </div>
  <div id="bottom">
    <form:form action="insert.do" method="post" id="form1">
      <table border="0" cellpadding="0">
        <tr>
          <td><img src="img/person/Smile-32.png" width="32" height="32" /></td>
          <td>姓名：</td>
          <td><form:input path="personName" id="textfield"/>
          <form:errors path="personName"></form:errors></td>
        </tr>
        <tr>
          <td><img src="img/person/Wink-32.png" width="32" height="32" /></td>
          <td>昵称：</td>
          <td><form:input path="personNickName" id="textfield"/>
          <form:errors path="personNickName"></form:errors></td>
        </tr>
        <tr>
          <td><img src="img/person/Man-Woman-32.png" width="32" height="32" /></td>
          <td>性别：</td>
          <td><form:radiobutton path="personSex" value="男" checked="checked"/>男
			  <form:radiobutton path="personSex" value="女"/>女</td>
        </tr>
        <tr>
          <td><img src="img/person/Cake-02-32.png" width="32" height="32" /></td>
          <td>生日：</td>
          <td><form:input path="personBirthday" id="textfield"/>
          <form:errors path="personBirthday"></form:errors></td>
        </tr>
        <tr>
          <td><img src="img/person/GroupBar-32.png" width="32" height="32" /></td>
          <td><p>所属分组：</p></td>
          <td><form:select path="kindId" id="select2">
			<c:forEach items="${groupsName }" var="group">
			<form:option value="${group.kindId }">${group.kindName }</form:option>
			</c:forEach>
		</form:select></td>
        </tr>
        <tr>
          <td><img src="img/person/Mobile-Phone-32.png" width="32" height="32" /></td>
          <td>电话：</td>
          <td><form:input path="personTelephone" id="textfield" />
          <form:errors path="personTelephone"></form:errors></td>
        </tr>
        <tr>
          <td><img src="img/person/Penguin-32.png" width="32" height="32" /></td>
          <td>Q Q：</td>
          <td><form:input path="personQQ" id="textfield"/>
          <form:errors path="personQQ"></form:errors></td>
        </tr>
        <tr>
          <td><img src="img/person/Mail-32.png" width="32" height="32" /></td>
          <td>邮箱：</td>
          <td><form:input path="personEmail" id="textfield"/>
          <form:errors path="personEmail"></form:errors></td>
        </tr>
        <tr>
          <td><img src="img/person/Map-Location-32.png" width="32" height="32" /></td>
          <td>地址： </td>
          <td><form:input path="personAddress" id="textfield"/>
          <form:errors path="personAddress"></form:errors></td>
        </tr>
        <tr>
          <td><img src="img/person/Msn-32.png" width="32" height="32" /></td>
          <td>MSN：</td>
          <td><form:input path="personMSN" id="textfield"/>
          <form:errors path="personMSN"></form:errors></td>
        </tr>
        <tr>
          <td><img src="img/person/Pencil-32.png" width="32" height="32" /></td>
          <td>简介：</td>
          <td><form:textarea path="personInfo" id="textarea" cols="45" rows="5" style="background-color:#414461"/>
           <form:errors path="personInfo"></form:errors></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="添加" style="background-color:#414461" />
          <input type="reset" name="button" id="button" value="重置" style="background-color:#414461" /></td>
        </tr>
      </table>
      <p>&nbsp;</p>
   </form:form>
    <p>&nbsp;</p>
  </div>
</div>
</body>
</html>
