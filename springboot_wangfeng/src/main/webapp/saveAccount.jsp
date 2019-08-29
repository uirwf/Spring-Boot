
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加账户数据</title>
</head>
<body>

<h1 align="center">添加账户数据</h1>

<div align="center">
    <a href="${pageContext.request.contextPath}/account/findAllAccount">返回账户数据列表</a><br>
</div>
<br>
<form align="center" name="addAccountForm" action="${pageContext.request.contextPath}/account/save" method="post">

    关联用户id：<input align="center" type="text" name="uid"><br>
    账户金额：<input align="center" type="text" name="money"><br>
    <input align="center" type="submit" value="保存">

</form>


</body>
</html>