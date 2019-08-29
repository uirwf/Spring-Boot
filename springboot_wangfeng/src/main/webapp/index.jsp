<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台数据管理</title>
</head>
<body>

<h1 align="center">后台数据管理</h1>

<div align="center">

    <h2 align="center" >用户数据管理</h2>
    <a href="${pageContext.request.contextPath}/user/findAll">查看用户数据</a><br>
    <!--<a href="${pageContext.request.contextPath}/saveUser.jsp">添加用户数据</a><br>-->
    <br>
    <a href="${pageContext.request.contextPath}/user/findAllUserWithAccount">查看用户数据(含关联账户)</a><br>
    <br>
    <a href="${pageContext.request.contextPath}/findUserByUsername.jsp">查询用户数据(需输入用户名)</a><br>
    <br>
    <br>
    <br>
    <br>
    <h2 align="center">账户数据管理</h2>
    <a href="${pageContext.request.contextPath}/account/findAllAccount">查看账户数据</a><br>
    <br>
    <a href="${pageContext.request.contextPath}/account/findAll">查看账户数据(含关联用户)</a><br>

</div>



</body>
</html>