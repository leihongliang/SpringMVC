<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2022/8/14
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <script src="${pageContext.request.contextPath}/static/jquery-3.6.0.js"></script>
    <%--js 是一个随便的语言 --%>
    <script>
      function a() {
        $.post({
          url:"${pageContext.request.contextPath}/a1",
          data:{"name":$("#username").val()},
          success: function (data) {
            alert(data)
            //   console.log(data)
          },
          error:function (err) {
          }
        })
      }
    </script>
  </head>
<body>
  ${pageContext.request.contextPath}
  <%--失去焦点的时候，发起一个请求(携带信息)到后台,然后判定是否相等--%>
  用户名：<input type="text" id="username" onblur="a()">
  </body>
</html>