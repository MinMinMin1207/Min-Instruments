<%-- 
    Document   : admin
    Created on : May 31, 2023, 6:48:40 PM
    Author     : Min
--%>

<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Admin Page</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="./css/style.css">

</head>
<body>

<div class="container">

   <div class="content">
      <h3>hi, <span>admin</span></h3>
         <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.html");
                return;
            }
            String search = request.getParameter("search");
            if (search == null) {
                search = "";
            }
        %>
      <h1>welcome <span><%= loginUser.getFullName()%></span></h1>
      <p>this is an admin page</p>
      <a href="MainController?action=CreatePage" class="btn">register</a>
      <a href="MainController?action=Logout" class="btn">logout</a>
      <a href="product.jsp" class="btn">product</a>
      <form action ="MainController" >
            Search <input type ="text" name ="search" value ="${param.search}"/>
            <input type ="submit" name ="action" value ="Search"/>
        </form>
        <%
            List<UserDTO> listUser = (List<UserDTO>) request.getAttribute("LIST_USER");
            if (listUser != null) {
                if (listUser.size() > 0) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>User ID</th>
                    <th>Full Name</th>
                    <th>Role ID</th>
                    <th>Password</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    for (UserDTO user : listUser) {
                %>
            <form action ="MainController">
                <tr>
                    <td><%= count++%></td>
                    <td>
                        <input type ="text" name="userID" value="<%= user.getUserID()%>" readonly=""/>
                    </td>
                    <td>
                        <input type ="text" name="fullName" value="<%= user.getFullName()%>" required=""/>
                    </td>
                    <td>
                        <input type ="text" name="roleID" value="<%= user.getRoleID()%>" required=""/>
                    </td>
                    <td><%= user.getPassword()%></td>
                    <!-- Update-->
                    <td>
                        <input type= "submit" name= "action" value= "Update"/>
                        <input type= "hidden" name= "search" value= "<%= search%>"/>
                    </td>
                    <!--                    <td>Update()%></td>--> 
                    <td> 
                        <a href="MainController?search=<%= search%>&action=Delete&userID=<%=user.getUserID()%>">Delete</a> 
                    </td>
                </tr>
            </form>
            <%
                }
            %>
        </tbody>
    </table>
        
    ${requestScope.ERROR}
    <%
            }
        }
    %>
   </div>

</div>
      
        
</body>
</html>
