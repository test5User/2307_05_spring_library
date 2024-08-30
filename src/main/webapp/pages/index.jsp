<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Libraries</title>
</head>
<body>
    <h1>Libraries</h1>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Address</th>
        </tr>
        <c:forEach var="library" items="${libraries}">
            <tr>
                <td>${library.name}</td>
                <td>${library.address}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
