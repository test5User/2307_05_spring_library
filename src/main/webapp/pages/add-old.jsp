<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Library</title>
</head>
<body>
  <form method="post" action="/save-old">
    <input name="name" placeholder="Library name" required><br>
    <input name="address" placeholder="Library address" required><br>
    <input type="submit" value="Add Library">
  </form>
</body>
</html>
