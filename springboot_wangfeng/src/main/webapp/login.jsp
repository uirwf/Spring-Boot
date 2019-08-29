<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台:管理员登录</title>
</head>
<body>
<h1 align="center">管理员登录</h1>
<form align="center" name="adminForm" action="${pageContext.request.contextPath}/admin/login" method="post">
    用户名：<input align="center" type="text" name="adminname"><br>
    密码：<input align="center" type="password" name="password"><br>
    <input align="center" type="submit" value="登录">
</form>

</body>
</html>
