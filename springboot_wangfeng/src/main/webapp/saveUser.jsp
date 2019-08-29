<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1 align="center">添加用户数据</h1>

<div align="center">
    <a href="${pageContext.request.contextPath}/user/findAll">返回用户数据列表</a><br>
</div>
<br>
<form  align = "center" name="userForm" action="${pageContext.request.contextPath}/user/save" method="post">
    用户名：<input  align="center" type="text" name="username"><br>
    密码：<input  align="center" type="password" name="password"><br>
    年龄：<input  align="center" type="text" name="age"><br>
    <input  align="center" type="submit" value="保存">
</form>

</body>
</html>