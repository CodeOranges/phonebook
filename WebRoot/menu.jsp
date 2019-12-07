<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	background-color: #FFFDF7;
}
#top {
	background-color: #FFFDF7;
	text-align: center;
	height: 400px;
	margin: 0px;
	padding: 0px;
	float: none;
}
#bottom {
	background-color: #414461;
	font-family: "微软雅黑";
	font-size: 16px;
	color: #FFFDF7;
	height: 180px;
	width: 750px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
#right {
	float: right;
	margin-right: 150px;
}
#left {
	float: left;
	margin-left: 150px;
}
#main #bottom #left table {
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}

#groups{position:relative;}
#person{position:relative;}

ul{ display:none; 
	list-style:none;
	position: absolute;
	border-radius:0px;
			
	}
	
ul li{ float: none;
		}
		
a{ text-decoration:none;
	color: #F5F5ED}

a:hover{ color:#F06}
#main #tip {
	font-family: "微软雅黑";
	font-size: 22px;
	font-weight: bold;
	color: #414461;
	text-align: center;
}
</style>

<script>
function showsubmenu(li){
var sub=li.getElementsByTagName("ul")[0];//获得第一个ul元素，getElementsByTagName返回的是一个数组
sub.style.display="block";//显示方式，块状
}
function hidsubmenu(li){
var sub=li.getElementsByTagName("ul")[0];
sub.style.display="none";
}
</script>
</head>

<body>
<c:if test="${listLogin==null }">
	<%response.sendRedirect("login.jsp"); %>
</c:if>
<div id="main">
  <div id="top">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p><img src="img/menu/logo.png" width="256" height="256" /></p>
  </div>
  <div id="bottom">
    <div id="right">
      <table border="0" cellpadding="0">
        <tr>
          <td><img src="img/groups/User-Group-48.png" width="48" height="48" /></td>
          <td onmouseover="showsubmenu(this)" onmouseout="hidsubmenu(this)"><a href="#" id="groups">联系组</a>
          		<ul>
                	<li><a href="/phonebook/group/insert.jsp">添加联系组</a></li>
         			<li><a href="GselectAll.do">查看所有联系组</a></li>
               	</ul>
          </td>
        </tr>
      </table>
    </div>
    <div id="left">
      <table border="0" cellpadding="0">
        <tr>
          <td><img src="img/person/User-Profile-48.png" width="48" height="48" /></td>
          <td onmouseover="showsubmenu(this)" onmouseout="hidsubmenu(this)"><a href="#" id="person">联系人</a>
          		<ul>
                	<li><a href="gselectAll.do">添加联系人</a></li>
                	<li><a href="/phonebook/person/selectConditions.jsp">多条件查询</a></li>
         			<li><a href="selectKindName.do">查看所有联系人</a></li>
               	</ul>
          </td>
        </tr>
      </table>
    </div>
  </div>
  <div id="tip">
  <c:forEach items="${listLogin }" var="user">
  当前在线用户：${user.username}
  </c:forEach>
  </div>
</div>
</body>
</html>

