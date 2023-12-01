<%-- 
    Document   : user
    Created on : 04/07/2023, 11:08:58 PM
    Author     : nhath
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Store</title>
        <!-- Google Font -->
        <link rel="preconnect" href="https://f...content-available-to-author-only...s.com" />
        <link rel="preconnect" href="https://f...content-available-to-author-only...c.com" crossorigin />
        <link
            href="https://f...content-available-to-author-only...s.com/css2?family=Kaisei+Decol&family=Poppins:wght@100;300;500&display=swap"
            rel="stylesheet"
            />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

        <!-- CSS -->
        <link rel="stylesheet" href="./css/user.css" />
    </head>
    <style>
        #header-cart {
            margin-right: 100px;
        }

        .icon-power {
            color: #000;
            width: 30px;
            height: 30px;
            object-fit: cover;
        }

        .logout {
            cursor: pointer;
        }

    </style>
    <body>
        <main>
            <header id="header">

                <div class="container">
                    <a href="#!" id="logo"><i class='bx bxs-piano'></i> MIN || INS.</a>
                    <section class="header-cart" id="header-cart">
                        <a href="viewCart.jsp" class="cart" id="viewcart">
                            <svg
                                class="cart-icon header-cart"
                                xmlns="http://w...content-available-to-author-only...3.org/2000/svg"
                                width="16"
                                height="16"
                                fill="currentColor"
                                class="bi bi-cart"
                                viewBox="0 0 16 16"
                                >
                            <path
                                d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"
                                />
                            </svg>
                        </a>
                        <div class="logout">
                            <form action="MainController" method="POST" id="logout">
                                <input type="hidden" name="action" value="Logout"/>
                                <svg 
                                    class="icon-power"
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-power" viewBox="0 0 16 16">
                                <path d="M7.5 1v7h1V1h-1z"/>
                                <path d="M3 8.812a4.999 4.999 0 0 1 2.578-4.375l-.485-.874A6 6 0 1 0 11 3.616l-.501.865A5 5 0 1 1 3 8.812z"/>
                                </svg>
                            </form>
                        </div>

                    </section>

                </div>
                <div>

                </div>
            </header>

            <section class="body" id="body">
                <div class="container">
                    <div class="list-products">
                        <%
                            int count = 0;
                        %>
                        <c:forEach var="o" items="${list}">
                            <form action="MainController" id="formCart-<%=count++%>" method="POST">
                                <input type="hidden" name="id" value="${o.id}"/>
                                <div class="product">
                                    <figure class="img-product">
                                        <img
                                            src="${o.image}"
                                            alt="Tea"
                                            class="img"
                                            />
                                        <input type="hidden" name="img" value="${o.image}"/>
                                    </figure>

                                    <div class="info-product">
                                        <span class="name-product">${o.name}</span>
                                        <input type="hidden" name="name" value="${o.name}"/>
                                        <div class="product-price">
                                            <span class="price">Price: ${o.price}$</span>
                                            <input type="hidden" name="price" value="${o.price}"/>
                                            <select name="cmbQuantity">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="10">10</option>   
                                            </select>
                                            <span class="addcart">
                                                <svg
                                                    class="cart-icon header-cart"
                                                    xmlns="http://w...content-available-to-author-only...3.org/2000/svg"
                                                    width="16"
                                                    height="16"
                                                    fill="currentColor"
                                                    class="bi bi-plus-circle"
                                                    viewBox="0 0 16 16"
                                                    >
                                                <path
                                                    d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"
                                                    />
                                                <path
                                                    d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"
                                                    />
                                                </svg>                                               
                                                <input type="hidden" name="action" value="Add"/>
                                            </span>
                                        </div>
                                    </div>
                                    <!--<input type="submit" name="action" value="Add"/>-->
                            </form>

                        </div>
                    </c:forEach>
                    <%
                        String message = (String) request.getAttribute("MESSAGE");
                        if (message == null) {
                            message = "";
                        }
                    %>
                    <%= message%>
                </div>
                </div>
            </section>
        </main>
        <script>
            const $ = document.querySelector.bind(document);
            const $$ = document.querySelectorAll.bind(document);
            $("#logout").addEventListener("click", () => {
                $("#logout").submit();
            })

            let carts = $$(".addcart");
            for (let index in carts) {
                carts[index].onclick = () => {
                    let str = "#formCart-" + index;
                    $$(str)[0].submit();
                }
            }
//                    .addEventListener("click", () => {
//                console.log($("formCart"));
//            })
        </script>
    </body>
</html>
