<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>

<link rel="stylesheet" type="text/css" href="indexstyle.css">
</head>
<body>
	 <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
    %>
	<div class="container">
		<h2>WELCOME, <%=username %>!</h2>
		<p>You are welcome to the page.</p>
		<H5>This page is created by Arijit Mondal</H5>
		<p>Frontend technologies used: HTML, CSS & Backend technologies used: JSP, SERVLET, JDBC.</p>
		 you can <a href="LogoutServlet">LOGOUT</a> from here.
	</div>
	<%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
	
</body>
</html>