<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>后台：账户数据列表展示</title>

    <script>


        function delAccount(accountId) {
            if (confirm("您确认要删除吗")){
                location.href="${pageContext.request.contextPath}/account/del/"+accountId;
            }
        }

        function updateAccount(accountId) {
            if(confirm("您确认要修改吗")){
                location.href="${pageContext.request.contextPath}/account/findAccountById/"+accountId;
            }
        }



    </script>



</head>
<body>

<h1 align="center">账户数据列表展示</h1>

<div align="center">
    <a href="${pageContext.request.contextPath}/index.jsp">返回首页</a><br>
</div>
<br>
<div align="center">
    <a href="${pageContext.request.contextPath}/saveAccount.jsp">添加账户数据</a>
</div>
<br>
<table align="center" border="1px" width="60%">

    <tr>
        <th align="center">账户id</th>
        <th align="center">账户金额</th>
        <th align="center">关联用户id</th>
        <th align="center">修改账户数据</th>
        <th align="center">删除账户</th>
    </tr>

    <c:forEach items="${accountList}" var="account">
        <tr>
            <td align="center" width="15%">${account.acId}</td>
            <td align="center" width="40%">${account.money}</td>
            <td align="center" width="15%">${account.user.userId}</td>
            <td align="center" width="20%"><a href="javascript:void (0);" onclick="updateAccount('${account.acId}')">修改</a> </td>
            <td align="center" width="10%"><a href="javascript:void (0);" onclick="delAccount('${account.acId}')">删除</a> </td>
        </tr>
    </c:forEach>

</table>



</body>
</html>
