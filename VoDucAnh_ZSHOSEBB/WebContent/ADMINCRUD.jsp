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
<title>ADMIN </title>
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
					<li class="nav-item"><a class="nav-link" href="Quanlyloai">QU???N L??
							LO???I</a></li>
					<li class="nav-item"><a class="nav-link" href="Quanlysanpham">QU???N L??
							S???N PH???M</a></li>
					<li class="nav-item"><a class="nav-link" href="Viewchuyentienadmin">CHUY???N
							TI???N</a></li>
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
							QU???N L?? <b>LO???I</b>
						</h2>

						<div class="col-sm-28">
							<a href="#addEmployeeModal" class="btn btn-success"
								data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Th??m
									 Lo???i</span></a>
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
                            <th>M?? Lo???i</th>
                            <th>T??n Lo???i</th>
                            <th>X??? L??</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listCC}" var="c">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${c.cid}</td>
                                <td>${c.cname}</td>
                                <td>
                                    <a href="LOADEDITLOAI?cid=${c.cid}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="Deleteloai?cid=${c.cid}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete" >&#xE872;</i></a>
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
                    <form action="Xulyqlloai" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Th??m Lo???i</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>M?? Lo???i</label>
                                <input name="txtml" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>T??n Lo???i</label>
                                <input name="txttl" type="text" class="form-control" required>
                            </div>
                            
                            <%-- <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.id}">${o.name}</option>
                                    </c:forEach>
                                </select>
                            </div> --%>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" name="butthemloai" >
                        </div>
                    </form>
                    
                    <%-- <c:forEach var="c" items="${listCC}">
			<tbody>
				<tr>
					<td>${c.getCid()}</td>
					<td>${c.getCname()}</td>
					<td>
						<div class="butsuaxoa d-flex justify-content-center">

							<!-- S???a -->
							<button name="butsua" value="${l.getMaloai()}"
								class="btn btn-info ml-2" type="submit">Update</button>
								
							<c:set var ="maloai" value ="${fn:replace(c.,' ', '')}" />	<!-- X??a kho???ng tr???ng -->
							<div class="modalsualoai d-flex justify-content-center">
								<button type="button" class="btn btn-info" data-toggle="modal"
									data-target="#modalsua${maloai}" data-whatever="@getbootstrap">Ch???nh
									s???a</button>
								<form action="Xulyqlloai" method="post">
									<div class="modal fade" id="modalsua${maloai}" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">S???a
														lo???i s??ch</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<div class="form-group">
														<label for="maloai" class="col-form-label">M?? lo???i
															s??ch:</label> 
															<input type="text" class="form-control" id="maloai"
															name="txtmls" value="${l.getMaloai()}">
													</div>
													<div class="form-group">
														<label for="tenloai" class="col-form-label">T??n
															lo???i s??ch:</label> 
															<input type="text" class="form-control"
															id="tenloai" name="txttls" value="${l.getTenloai()}">
													</div>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Tr??? l???i</button>
													<button type="submit" name="butsualoai" value="${l.getMaloai()}"
														class="btn btn-primary">L??u thay ?????i</button>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
                    </div>
                   </td>
                   </tr>
                   </tbody>
                   </c:forEach> --%>
                   
                         
                </div>
            </div>
        </div>	
	
	
</body>
</html>
