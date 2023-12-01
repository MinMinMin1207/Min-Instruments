<%-- 
    Document   : user
    Created on : May 31, 2023, 6:45:31 PM
    Author     : Min
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>user page</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<div class="container">
<%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"US".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.html");
                return;
            }
        %>
   <div class="content">
      <h3>hi, <span>user</span></h3>
      <h1>welcome <span>${sessionScope.LOGIN_USER.fullName}</span></h1>
      <p>Here are your information:</p>
      User ID: ${sessionScope.LOGIN_USER.userID}</br>
        Full Name: ${sessionScope.LOGIN_USER.fullName}</br>
        Role ID: ${sessionScope.LOGIN_USER.roleID}</br>
        Password: ${sessionScope.LOGIN_USER.password}</br>
      <a href="MainController?action=CreatePage" class="btn">register</a>
      <a href="MainController?action=Logout" class="btn">logout</a>
   </div>

</div>

</body>
</html>