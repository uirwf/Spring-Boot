<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账户数据修改</title>
</head>
<body>

<h1 align="center">账户数据修改</h1>

<div align="center">
    <a href="${pageContext.request.contextPath}/account/findAllAccount">返回账户列表</a><br>
</div>
<br>
<form align="center" name="editAccountForm" action="${pageContext.request.contextPath}/account/update" method="post">
    账户id：<input align="center" type="text" name="id" value="${account.acId}" readonly="readonly"><br>
    账户金额：<input align="center" type="text" name="money" value="${account.money}"><br>
    关联用户id：<input align="center" type="text" name="uid" value="${account.user.userId}"><br>
    <input align="center" type="submit" value="修改">

</form>



</body>
</html>