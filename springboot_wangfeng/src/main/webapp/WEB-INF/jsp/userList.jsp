<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>后台:用户数据列表展示</title>


    <script>

        function delUser(userId) {
            if(confirm("您确认要删除吗")){
                location.href = "${pageContext.request.contextPath}/user/del/"+userId;
            }
        }

        function updateUser(userId) {
            if (confirm("您确认要修改吗")) {
                location.href="${pageContext.request.contextPath}/user/findUserById/"+userId;
            }
        }

    </script>



</head>


<body>

<h1 align="center">用户数据列表展示</h1>
<div align="center">
    <a href="${pageContext.request.contextPath}/index.jsp">返回首页</a><br>
</div>
<br>
<div align="center">
    <a href="${pageContext.request.contextPath}/saveUser.jsp">添加用户数据</a><br>
</div>
<br>
<table align="center" border="1px" width="60%">

    <tr>
        <th align="center">用户id</th>
        <th align="center">用户名</th>
        <th align="center">用户密码</th>
        <th align="center">用户年龄</th>
        <th align="center">修改用户数据</th>
        <th align="center">删除用户</th>
    </tr>

    <c:forEach items="${userList}" var="user">
        <tr>
            <td align="center" width="10%">${user.userId}</td>
            <td align="center" width="30%">${user.username}</td>
            <td align="center" width="20%">${user.password}</td>
            <td align="center" width="10%">${user.age}</td>
            <!--<td align="center"><a  href="${pageContext.request.contextPath}/user/findUserById/"+${user.userId}>修改</a></td>-->
            <td align="center" width="20%"><a href="javascript:void (0);" onclick="updateUser('${user.userId}')">修改</a> </td>
            <td align="center" width="10%"><a href="javascript:void (0);" onclick="delUser('${user.userId}')">删除</a> </td>
        </tr>
    </c:forEach>

</table>








</body>
</html>
