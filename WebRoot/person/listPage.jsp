<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
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
#main #middle table {
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#main #middle table tr td #form1 #textfield {
	height: 40px;
	width: 300px;
	padding-left: 10px;
	border-radius: 30px;
	font-family: "微软雅黑";
	font-size: 16px;
	color: #414461;
}
#main #top table {
	margin-top: 5px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	font-family: "微软雅黑";
	font-size: 18px;
	font-weight: bolder;
	color: #fffdf7;
}
#main #bottom table {
	font-family: "微软雅黑";
	font-size: 16px;
	font-weight: bolder;
	color: #414461;
	background-color: #fffdf7;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	padding: 0px;
}
#main #bottom table tr td {
	padding: 5px;
}
#main {
	height: 600px;
	width: 1200px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	margin-top: 80px;
}
#main #middle table tr td #form1 #button {
}
#main #middle table tr td #form1 table tr td #button {
	height: 40px;
	width: 65px;
	font-family: "微软雅黑";
	color: #fffdf7;
	font-size: 18px;
	border-radius:15px;
}
a {
	text-decoration: none;
	color: #414461;
}
a:hover {
	color: #F36;
}
#menu {
	font-family: "微软雅黑";
	font-size: 18px;
	color: #FFFdf7;
	margin-left: 1000px;
}
#menu1 {
	color: #fffdf7;
}
#menu1:hover {
	color: #F36;
}
</style>
  </head>
  
<body>
<jsp:useBean id="command" class="com.entity.Person" scope="request"></jsp:useBean>
<div id="main">
  <div id="middle">
    <table border="0" cellpadding="0">
      <tr>
        <td><img src="img/person/Magnifying-Glass-48.png" width="48" height="48" /></td>
        <td><form:form id="form1" action="selectCondition.do" method="post">
          <label for="textfield"></label>
          <table width="0" border="0" cellpadding="0">
            <tr>
              <td><form:input path="personName" id="textfield" style="background-color:#fffdf7"/></td>
              <td><input type="submit" name="button" id="button" value="查询" style="background-color:#414461"  /></td>
            </tr>
        </table>
        </form:form></td>
      </tr>
    </table>
  </div>
  <div id="top">
    <table border="0" cellpadding="0">
      <tr>
        <td><p>查看全部联系人</p></td>
      </tr>
    </table>
  </div>
  <div id="bottom">
    <table width="0" border="0" cellpadding="0">
      <tr>
        	<td>联系人编号</td>
    		<td>联系人姓名</td>
    		<td>称呼</td>
    		<td>性别</td>
    		<td>生日</td>
    		<td>所属类别</td>
    		<td>联系人电话</td>
    		<td>联系人QQ</td>
    		<td>邮箱</td>
    		<td>地址</td>
    		<td>MSN</td>
    		<td>简介</td>
    		<td>操作</td>
      </tr>
      <c:forEach items="${listPage }" var="person">
    		<tr>
    			<td>${person.personId }</td>
    			<td>${person.personName }</td>
    			<td>${person.personNickName }</td>
    			<td>${person.personSex }</td>
    			<td>${person.personBirthday }</td>
    			<td><a href="selectKindName.do?kindId=${person.kindId }">${person.kindId }</a></td>
    			<td>${person.personTelephone}</td>
    			<td>${person.personQQ }</td>
    			<td>${person.personEmail }</td>
    			<td>${person.personAddress }</td>
    			<td>${person.personMSN}</td>
    			<td>${person.personInfo }</td>
    			<td><a href="selectOne.do?personId=${person.personId }">修改</a></td>
    			<td><a href="delete.do?personId=${person.personId }">删除</a></td>
    		</tr>
    	</c:forEach>
    </table>
    <p id="menu"><a href="menu.jsp" id="menu1">返回主菜单</a></p>
    <p>共【${pageBean.totalCount }】条记录，共【${pageBean.totalPage }】页，当前第【${pageBean.currentPage }】页。</p>
    <p>
    <c:if test="${pageBean.currentPage!=1}">
    	<a href="listPage.do?currentPage=${pageBean.currentPage-1 }">上一页</a>
    </c:if>
    <c:if test="${pageBean.currentPage!=totalPage }">
    	<a href="listPage.do?currentPage=${pageBean.currentPage+1 }">下一页</a>
    </c:if>
    </p>
  </div>
</div>
</body>
</html>
