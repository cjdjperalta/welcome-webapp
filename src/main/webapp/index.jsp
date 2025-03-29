<%@ page import="java.time.LocalTime" %>
<%
    String name = "YourName"; // replace with your actual name
    LocalTime now = LocalTime.now();
    String greeting = now.isBefore(LocalTime.NOON) ? "Good morning" : "Good afternoon";
%>
<html>
<body>
    <h2><%= greeting %>, <%= name %>. Welcome to COMP367</h2>
</body>
</html>
