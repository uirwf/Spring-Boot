<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询用户数据信息</title>
</head>
<body>

<h1 align="center">查询用户数据信息</h1>

<div align="center">
    <a href="${pageContext.request.contextPath}/index.jsp">返回首页</a><br>
</div>
<br>
<form align="center" name="findUserByUsernameForm" action="${pageContext.request.contextPath}/user/findUserByUsername" method="post">
    用户名：<input align="center" type="text" name="username"><br>
    <input align="center" type="submit" value="查询">
</form>

</body>
</html>