<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Libraries</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <h1>Libraries</h1>
    <table border="1">
        <tr class="red">
            <th>Name</th>
            <th>Address</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="library" items="${libraries}">
            <tr>
                <td>${library.name}</td>
                <td>${library.address}</td>
                <td>
                    <a href="/view/${library.id}">View</a>
                    <a href="/delete/${library.id}">Delete</a>
                    <a href="/upd/${library.id}">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <p>
        <a href="/add">Add</a>
    </p>
    <p>
        <a href="/pages/add-old.jsp">Add old</a>
    </p>
</body>
</html>
