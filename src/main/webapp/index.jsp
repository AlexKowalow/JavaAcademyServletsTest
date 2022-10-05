<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "A better greeting!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br>
<a href="my-servlet">My Servlet</a>
<br>
<a href="login">login</a>
<br>
<hr>

<form name="bmiForm" action="${pageContext.request.contextPath}/calculateServlet" method="POST">
    <table>
        <tr>
            <td>Your Weight (kg) :</td>
            <td><input type="text" name="weight"/></td>
        </tr>
        <tr>
            <td>Your Height (m) :</td>
            <td><input type="text" name="height"/></td>
        </tr>
        <th><input type="submit" value="Submit" name="find"/></th>
        <th><input type="reset" value="Reset" name="reset"/></th>
    </table>
    <h2>${bmi}</h2>
</form>

</body>
</html>