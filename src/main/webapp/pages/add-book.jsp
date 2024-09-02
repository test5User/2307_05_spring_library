<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
    <sf:form method="post" action="/saveBook" modelAttribute="book">
        <sf:input path="library_id" type="hidden"/>
        <sf:input path="title" palceholder="Book Title"/><br>
        <sf:input path="pages" type="number" palceholder="Book Pages"/><br>
        <input type="submit" value="Add Book">
    </sf:form>
</body>
</html>
