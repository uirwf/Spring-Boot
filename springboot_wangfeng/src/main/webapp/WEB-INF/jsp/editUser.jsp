<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户数据修改</title>
</head>
<body>

<h1 align="center">用户数据修改</h1>

<div align="center">
    <a href="${pageContext.request.contextPath}/user/findAll">返回用户数据列表</a><br>
</div>
<br>
<form align="center" name="editUserForm" action="${pageContext.request.contextPath}/user/update" method="post">
    用户id：<input type="text" name="id" value="${user.userId}" readonly="readonly"><br>
    用户名：<input type="text" name="username" value="${user.username}"><br>
    密码：<input type="password" name="password" value="${user.password}"><br>
    年龄：<input type="text" name="age" value="${user.age}"><br>
    <input align="center" type="submit" value="修改">
</form>


</body>
</html>