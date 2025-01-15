<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="container">
		<h1>Login</h1>
        <form action="LoginServlet" method="post"> <!-- Change method to "post" -->
            <label for="username">username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <button type="submit">Login</button>
        </form>

        <p><a href="index.html">Back to Home</a></p>
        
        <% String error = request.getParameter("error");
        	if(error!= null && error.equals("1")) { %>
        		<p style="color: red"> Invalid username or password. Please try again.</p>
        <% } %>
		
		<% String rs = request.getParameter("registration");
        	if(rs != null && rs.equals("success")){ %>
        	<p style="color: green;">Your Registration is Successfull. You can Login now.
        	<% } %>
	</div>

</body>
</html>