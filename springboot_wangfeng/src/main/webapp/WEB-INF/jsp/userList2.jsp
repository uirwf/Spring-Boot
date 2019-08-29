<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>后台:用户数据列表展示(含关联账户)</title>
</head>

<body>
<h1 align="center">用户数据列表展示(含关联账户)</h1>

<div align="center">
    <a href="${pageContext.request.contextPath}/index.jsp">返回首页</a><br>
</div>
<br>
<table align="center" border="1px" width="60%">
    <tr>
        <th align="center">用户id</th>
        <th align="center">用户名</th>
        <th align="center">用户密码</th>
        <th align="center">用户年龄</th>
        <th align="center">关联账户id</th>
        <th align="center">关联账户金额</th>
    </tr>
    <c:forEach items="${userList2}" var="user">
        <tr>
            <td align="center" width="10%">${user.userId}</td>
            <td align="center" width="20%">${user.username}</td>
            <td align="center" width="20%">${user.password}</td>
            <td align="center" width="10%">${user.age}</td>
            <td align="center" width="10%"><!---id有:<br>-->
                <c:forEach items="${user.accounts}" var="account">
                    ${account.acId}<br>
                </c:forEach>
            </td>
            <td align="center" width="30%">
                <c:forEach items="${user.accounts}" var="account">
                    ${account.acId}号账户:${account.money}<br>
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
</table>







</body>
</html>