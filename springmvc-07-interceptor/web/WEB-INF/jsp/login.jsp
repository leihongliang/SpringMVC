<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2022/8/16
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<%--在web-inf下面的所有页面或者资源，只能通过controller或者Servlet进行访问--%>
<h1>登录页面 login.jsp</h1>

<form action="${pageContext.request.contextPath}/user/login" method="post">
    用户名：<input type="text" name="username">
    密码：<input type="text" name="password">
    <input type="submit" value="提交">
</form>
</body>
</html>
