<%@page import="bean.Adminsignup"%>
<%@page import="bo.Cartbo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="bean.Account"%>
<%@ page import="bean.Category" %>
<%@ page import="bean.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>SHOP GIÀY</title>
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
	width: 50px;
	height: 50x;
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
					<li class="nav-item"><a class="nav-link" href="Viewchuyentienadmin">CHUYỂN
							TIỀN</a></li>
					<li><a></a></li>
					<li><a></a></li>
					<li><a></a></li>
					<%if(session.getAttribute("admin")==null){ %>
					<li ><a class="nav-link" href="dangnhapadmin"> <i
							class="fa fa-user" style="padding-left: 619px"></i></a>
					</li >
					<%} else { %>
					<li >
                           <a class="nav-link" href="Adminlogout"> <i class="fa fa-user" style="padding-left: 619px"></i> <%=((Adminsignup) session.getAttribute("admin")).getUsers()%> </a></li>
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
							QUẢN LÝ <b>SẢN PHẨM</b>
						</h2>

						<div class="col-sm-28">
							<a href="#addEmployeeModal" class="btn btn-success"
								data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm
									 Sản Phẩm</span></a>
							<!--  <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a> -->
						</div>
					</div>
				</div>
		    </div>
	     
		   <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                             <th>Mã Sản Phẩm</th>  
                            <th>Tên Sản Phẩm</th>
                            <th>Ảnh </th>
                            <th>Giá</th>
                            <th>Số Lượng</th>
                            <th>Chủ Đề SP</th>
                            <th>Chi Tiết SP</th>
                           
                            <th>Xử lý</th> 
                            
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listP}" var="p">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${p.id}</td>
                                <td>${p.name}</td>
                                <td><img  src="${p.image }"></td>
                                <td>${p.price}</td>
                                <td>${p.amount}</td>
                                <td>${p.title}</td>
                                <td>${p.description}</td>
                                
                                <td>
                                    <a href="LOADEDIT?id=${p.id }"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="DeLSP?id=${p.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <!-- div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div> -->
            </div>
        </div>
			 <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="XuLyqlsanpham" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Thêm Sản Phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                           <!--   <div class="form-group">
                                <label>Mã Sản Phẩm</label>
                                <input name="id" type="text" class="form-control" required>
                            </div>  -->
                            <div class="form-group">
                                <label>Tên Sản Phẩm</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Ảnh</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Giá</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Số Lượng</label>
                                <input name="amount" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Chủ Đề SP</label>
                                <input name="title" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>Chi Tiết SP</label>
                                <input name="description" type="text" class="form-control" required>
                            </div>
                           <!--   <div class="form-group">
                                <label>Mã Loại</label>
                                <input name="category" type="text" class="form-control" required>
                            </div>   -->
                              
                              <div class="form-group">
                                <label>Loại</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listCC}" var="o">
                                        <option  value="${o.cid}">${o.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>  
                            

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" name="butthemloai"><!-- value="Add" -->
                        </div>
                    </form>
                </div>
            </div>
        </div>	
	
	
</body>
</html>
