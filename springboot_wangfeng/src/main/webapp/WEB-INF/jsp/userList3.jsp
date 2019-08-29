<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>查询用户数据结果展示</title>
</head>
<body>

<h1 align="center">查询结果展示</h1>

<div align="center">
    <a href="${pageContext.request.contextPath}/index.jsp">返回首页</a><br>
</div>
<br>
<table align="center" border="1px" width="60%">
    <tr>
        <th align="center">用户id</th>
        <th align="center">用户名</th>
        <th align="center">密码</th>
        <th align="center">年龄</th>
    </tr>
    <tr>
        <td align="center" width="10%">${user.userId}</td>
        <td align="center" width="40%">${user.username}</td>
        <td align="center" width="40%">${user.password}</td>
        <td align="center" width="10%">${user.age}</td>
    </tr>
</table>

</body>
</html>
