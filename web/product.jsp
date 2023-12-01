<%-- 
    Document   : product
    Created on : Jul 8, 2023, 10:59:20 PM
    Author     : Min
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");

            if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                response.sendRedirect("admin.jsp");
                return;
            }
            String search = request.getParameter("search");
            String SearchProduct = request.getParameter("SearchProduct");
            if (search == null) {
                search = "";
            }
        %>

    <c:if test = "${listProduct.size()>0}">
        <%
            int count1 = 1;
        %>
        <table border="1">
            <thead>
                <tr>
                    <th class="number">#</th>
                    <th class="userID">ProductID</th>
                    <th class="fullname">Product Name</th>
                    <th class="password">Price</th>
                    <th class="delete">Delete</th>
                    <th class="update">Update</th>
                </tr>
            </thead>

            <tbody>
            <c:forEach items="${listProduct}" var="o">
                <form action="MainController" method="POST">
                    <tr>
                        <td class="number"><%=count1++%></td>
                        <td>
                            <input type="text" name="productID" value="${o.productID}" readonly=""/>
                        </td>
                        <td>
                            <input type="text" name="productName" value="${o.productName}" required=""/>
                        </td>
                        <td>
                            <input type="text" name="price" value="${o.price}" required=""/>
                        </td>
                        <!--day la delete-->
                        <td>
                            <a href="MainController?SearchProduct&action=DeleteProduct&productID=${o.productID}">Delete</a>
                        </td>
                        <td>
                            <input type="submit" name="action" value="UpdateProduct"/>
                           <!--<input type="hidden" name="search" value="${param.search}"/>-->
                           <!--<button href="MainController?SearchProduct&action=UpdateProduct&productID=${o.productID}&productName=${o.productName}&price=${o.price}">Update</a>-->
                        </td>
                    </tr>
                </form>
            </c:forEach>   
            </body>
            </html>
