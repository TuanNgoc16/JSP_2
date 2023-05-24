<%--
  Created by IntelliJ IDEA.
  User: pnggo
  Date: 5/24/2023
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
Student Table
<table>
    <tr>
        <th>First Name </th>
        <th>Last Name </th>
        <th>Email</th>
    </tr>

    <c:forEach var="tempStudent" items="${student_list}">
        <tr>
            <td>${tempStudent.firstName}</td>
            <td>${tempStudent.lastName}</td>
            <td>${tempStudent.email}</td>
        </tr>
    </c:forEach>


</table>
</body>
</html>
