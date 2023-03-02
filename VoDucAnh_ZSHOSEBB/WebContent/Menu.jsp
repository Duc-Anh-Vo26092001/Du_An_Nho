<%@page import="bo.Cartbo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="bean.Account"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOP GIÀY</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--begin of menu-->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <!-- <img alt="" src="logo.jpg" style="width:50px ;"> -->
                 <a class="navbar-brand" href="HomeController"><img alt="" src="logoshopbb.png" style="width: 100px;heigth:100px">  </a> 
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Chủ Trang</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="htCartController">Giỏ Hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Invoice">Thanh Toán</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">Lịch Sử Mua</a>
                        </li>
                        
                       <!--  <li class="nav-item">
                            <a class="nav-link" href="Login.jsp">Login</a>
                        </li> -->
                    </ul>

                    <form action="SearchController" method="post" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input name="txtsearch" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <%
						Cartbo gh = (Cartbo)session.getAttribute("gio");
					    if(session.getAttribute("gio")!=null && gh.cr.size()!=0){
					  %>
                        <a class="btn btn-warning btn-sm ml-3" href="htCartController">
                            <i class="fa fa-shopping-cart"></i> Cart
                            <span class="badge badge-light"><%=gh.cr.size() %></span>
                        </a>
                        <%} %>
                        
                       <%if(session.getAttribute("acc")==null){ %>
                            <a class="nav-link" href="Login.jsp"> <i class="fa fa-user"></i></a>
                            
                       <%} else { %>
                           <a class="nav-link" href="LogoutController"> <i class="fa fa-user"></i> <%=((Account) session.getAttribute("acc")).getUser() %> </a>
                           <%} %>
                    </form>
                </div>
            </div>
        </nav>