<%--
  Created by IntelliJ IDEA.
  User: avrma
  Date: 4/28/2018
  Time: 8:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>${updateMessage}</h3>
</body>
</html>
<script>
    var timer = setTimeout(function() {
        window.location='administrator'
    }, 150);
</script>