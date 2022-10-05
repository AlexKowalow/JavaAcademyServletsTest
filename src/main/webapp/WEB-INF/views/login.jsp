<%--
  Created by IntelliJ IDEA.
  User: kavalioua
  Date: 05.10.2022
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/login" method="post">
    <input type="email" name="email">
    <br>
    <input type="password" name="password">
    <br>
    <input type="submit" value="SUBMIT">
</form>
</body>
</html>
