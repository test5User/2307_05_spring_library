<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
  <form action="/addBookOld" method="post">
    <input name="title" placeholder="Book Title" required><br>
    <input name="pages" placeholder="Book Pages" required><br>
    <input type="hidden" name="library_id" value="<%=request.getParameter("library_id")%>">
    <input type="submit" value="Add Book">
  </form>
</body>
</html>
