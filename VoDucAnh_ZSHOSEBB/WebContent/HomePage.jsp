<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page  import="bean.Cart"%>
<%@ page  import="bo.Cartbo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOP BB</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
    .img-banner{
     height: 277px;
        width: 366px;
    }
    </style>
    <body>
        <!--begin of menu-->
         <jsp:include page="Menu.jsp"></jsp:include> 
       <!--  <section class="jumbotron text-center"> -->
            <!-- <div class="container">
                <h1 class="jumbotron-heading">Giày Búp Bê Chất Lượng Cao</h1>
                <p class="lead text-muted mb-0">Uy tín tạo nên thương hiệu với hơn 10 năm cung cấp các sản phầm giày nhập từ USA</p>
            </div> -->
		<div style="/* background-color: #ffe049; */ padding: 10px;">
			<div
				style="padding: 10px; background-color: #ffffff; border-radius: 10px;">
			<td>
				<tr>
					<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv3CffhgBnJwpcJyUEyQt2E9fd_Z5cE6No8g&usqp=CAU"
						class="img-banner">
				</tr>
				<tr>
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5UrrW45K7YFUw9MHK0YwuNsOGMKhHdR6NTg&usqp=CAU"
						class="img-banner">
				</tr>
				<tr>
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiT6WeJC6AgRmw7JiWNJAsOFFFY7AsRChPBA&usqp=CAU"
						class="img-banner">
				</tr>
				<tr>
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaxs2VSnTORHN4g7ByYr135TksNThZITwzXg&usqp=CAU"
						class="img-banner">
				</tr>
				</td>
			</div>
		</div>
	<!-- </section> -->
        <!--end of menu-->
        <div class="container">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="HomeController">Trang chủ</a></li>
                            <li class="breadcrumb-item"><a href="#">Loại</a></li>
                            <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-secondary text-white text-uppercase"><i class="fa fa-list"></i> Loại </div>
                        <ul class="list-group category_block">
                            <c:forEach items="${listCC}" var="o">
                                <li class="list-group-item text-white ${t == o.cid ? "":"" }"><a href="CategoryController?cid=${o.cid}">${o.cname}</a>
                                </li>
                                
                            </c:forEach>

                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-danger text-white text-uppercase">Sản phẩm mới nhất</div>
                        <div class="card-body">
                            <img class="img-fluid" src="${p.image}" />
                            <h5 class="card-title">${p.name}</h5>
                            <p class="card-text">${p.title}</p>
                            <p class="bloc_left_price">${p.price}</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-9">
                    <div class="row">
                        <c:forEach items="${listP}" var="o">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="DetailController?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block">${o.price} </p>
                                            </div>
                                            <div class="col">
                                                <a href="CartController?id=${o.id}&image=${o.image}&name=${o.name}&price=${o.price}" class="btn btn-warning btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </div>

        <!-- Footer -->
        <jsp:include page="Footer.jsp"></jsp:include> 
       
    </body>
</html>

