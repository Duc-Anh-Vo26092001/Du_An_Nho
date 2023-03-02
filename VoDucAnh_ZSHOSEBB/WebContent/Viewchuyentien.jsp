<%@page import="bean.Adminsignup"%>
<%@page import="bo.Cartbo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="bean.Account"%>
<%@ page import="bean.Category" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>CHUYỂN TIỀN</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- <script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="manager.css" rel="stylesheet" type="text/css" />
<style>
img {
	width: 200px;
	height: 120px;
}
</style>
</head>
<body>
	<!--begin of menu-->
	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<div class="container">
			<!-- <img alt="" src="logo.jpg" style="width:50px ;"> -->
			<!-- <a class="navbar-brand" href="HomeController"><img alt=""
				src="logo.jpg" style="width: 50px; heigth:50px"> </a> -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExampleDefault"
				aria-controls="navbarsExampleDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-end"
				id="navbarsExampleDefault">
				<ul class="navbar-nav m-auto">
					<li class="nav-item"><a class="nav-link" href="#">ADMIN</a></li>
					<li class="nav-item"><a class="nav-link" href="Quanlyloai">QUẢN LÝ
							LOẠI</a></li>
					<li class="nav-item"><a class="nav-link" href="Quanlysanpham">QUẢN LÝ
							SẢN PHẨM</a></li>
					<li class="nav-item"><a class="nav-link" href="#">CHUYỂN
							TIỀN</a></li>
					<li><a></a></li>
					<li><a></a></li>
					<li><a></a></li>
					<%if(session.getAttribute("admin")==null){ %>
					<li ><a class="nav-link" href="dangnhapadmin"> <i
							class="fa fa-user" style="padding-left: 619px"></i></a>
					</li>
					<%} else { %>
					<li>
                           <a class="nav-link" href="Adminlogout"> <i class="fa fa-user"style="padding-left: 619px"></i> <%=((Adminsignup) session.getAttribute("admin")).getUsers()%> </a></li>
                    <%} %>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>
							CHUYỂN <b>TIỀN</b>
						</h2>

						<!-- <div class="col-sm-28">
							<a href="#addEmployeeModal" class="btn btn-success"
								data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm
									 Loại</span></a>
							 <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>
						</div> -->
					</div>
				</div>
		    </div>
	     
		   <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <!-- <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th> -->
                            <th>Mã Chi Tiết HĐ</th>
                            <th>Mã Hóa Đơn</th>
                            <th>Họ Tên</th>
                            <th>Tên Sản Phẩm</th>
                             <th>Số Lượng Mua</th>
                             <th>Giá</th>
                             <th>Thành Tiền</th>
                             <th>Tình Trạng</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${ds}" var="ds">
                            <tr>
                               <!--  <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td> -->
                                <td>${ds.invoiceDetailid}</td>
                                <td>${ds.invoiceid}</td>
                                <td>${ds.fullname}</td>
                                <td>${ds.name}</td>
                                <td>${ds.quantitypurchased}</td>
                                 <td>${ds.price}</td>
                                 <td>${ds.intomoney }</td>
                                <td>${ds.condition}</td>
                                
                                <%-- <td>
                                    <a href="LOADEDITLOAI?cid=${c.cid}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="Deleteloai?cid=${c.cid}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete" >&#xE872;</i></a>
                                </td> --%>
                                 <td><a href="xacnhanchuyentienController<%-- ?mct=<%=ds.invoiceDetailid%> --%>">
           Xác nhận
        </a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                </div>
                </div>
                
    </body>
	</html>         