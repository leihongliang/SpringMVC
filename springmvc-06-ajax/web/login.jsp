<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/18 0018
  Time: 10:44
  To change this template use File | Settings | File Templates.
  动态判断输入账号密码
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script src="${pageContext.request.contextPath}/static/jquery-3.6.0.js"></script>

    <script>
        function a1() {
            $.post({
                url: '${pageContext.request.contextPath}/a3',
                data: {"name":$("#name").val()},
                success:function (data) {
                    console.log(data)
                    if (data === "ok") {
                        $("#userInfo").css("color","green");
                    } else {
                        $("#userInfo").css("color","red");
                    }
                    $("#userInfo").html(data);
                }
            })
        }
        function a2() {
            $.post({
                url: '${pageContext.request.contextPath}/a3',
                data: {"pwd":$("#pwd").val()},
                success:function (data) {
                    console.log(data)
                    if (data.toString() === "123456") {
                        $("#pwdInfo").css("color","green");
                    } else {
                        $("#pwdInfo").css("color","red");
                    }
                    $("#pwdInfo").html(data);
                }
            })
        }
    </script>
</head>
<body>

<p>
    用户名：<input type="text" id="name" onblur="a1()">
    <span id="userInfo"></span>
</p>
<p>
    密码：<input type="text" id="pwd" onblur="a2()">
    <span id="pwdInfo"></span>
</p>
</body>
</html>
