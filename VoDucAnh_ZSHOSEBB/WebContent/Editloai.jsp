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
<body>


			<div class="container">
				<div class="table-wrapper">
					<div class="table-title">
						<div class="row">
							<div class="col-sm-6">
								<h2>
									Sửa <b>Loại</b>
								</h2>
							</div>
							<div class="col-sm-6"></div>
						</div>
					</div>
				</div>
				<div id="editEmployeeModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="Editloai" method="post">
								<div class="modal-header">
									<h4 class="modal-title">Sửa Loại</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label>Mã Loại</label> <input value="${detail.cid }" name="cid"
											type="text" class="form-control" readonly required>
									</div>
									<div class="form-group">
										<label>Tên Loại</label> <input value="${detail.cname }"
											name="cname" type="text" class="form-control" required>
									</div>
								</div>
								 <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                                 </div>
							</form>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		</nav>
		
		</body>
</html>