<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>后台：账户数据列表展示(含关联用户)</title>
</head>
<body>

<h1 align="center">账户数据列表展示(含关联用户)</h1>

<div align="center">
    <a href="${pageContext.request.contextPath}/index.jsp">返回首页</a><br>
</div>
<br>
<table align="center" border="1px" width="60%">
    <tr>
        <th align="center">账户id</th>
        <th align="center">账户金额</th>
        <th align="center">关联用户id</th>
        <th align="center">关联用户名称</th>
    </tr>
    <c:forEach items="${accountList}" var="account">
        <tr>
            <td align="center" width="20%">${account.acId}</td>
            <td align="center" width="30%">${account.money}</td>
            <td align="center" width="20%">${account.user.userId}</td>
            <td align="center" width="30%">${account.user.username}</td>
        </tr>
    </c:forEach>
</table>




</body>
</html>
