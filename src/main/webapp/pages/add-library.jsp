<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Library</title>
</head>
<body>
    <sf:form method="post" action="/save" modelAttribute="library">
        <sf:input path="name" placeholder="Library name" required="true"/><br>
        <sf:input path="address" placeholder="Library address" required="true"/><br>
        <input type="submit" value="Save Library">
    </sf:form>
</body>
</html>
