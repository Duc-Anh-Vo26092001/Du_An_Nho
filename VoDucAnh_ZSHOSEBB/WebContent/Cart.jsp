<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page  import="bean.Cart"%>
<%@ page  import="bo.Cartbo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>

    <body>
    
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="shopping-cart">
                <div class="px-4 px-lg-0">

                    <div class="pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                    <!-- Shopping cart table -->
                                    <div class="table-responsive">
                                    <form action="htCartController" id="my_form"></form>
                                     <form action="DeleteChon" id="my_form1"></form>
                                     <form action="Invoice"id="my_form2"></form>
                                        <table class="table">
                                        <%  Cartbo gh =(Cartbo)session.getAttribute("gio");
	      	                                  if(gh!=null){%>
                                            <thead>
                                                <tr>
                                                 
                                                     <th><button type="submit" class="btn btn-danger" form="my_form1">XC</button></th> 
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2  text-uppercase">Mã</div>
                                                    </th> 
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Đơn Giá</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Số Lượng</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Thành Tiền</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Action</div>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <%-- <c:forEach items="${list}" var="o"> --%>
                                             <% 
		      	  	                            for(Cart o: gh.cr){
		                                     %>
                                                <tr>
                                                    <td  class="align-middle"><strong><input type="checkbox" name="<%=o.getId() %>" form="my_form1"/></strong></td>
                                                    <th scope="row">
                                                       
                                                        <div class="p-2">
                                                           
                                                            <img src="<%-- ${o.image} --%><%=o.getImage() %>" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block"><%-- ${o.name} --%><%=o.getName() %></a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                        
                                                    </th>
                                                    <td class="align-middle"><strong><%-- ${o.price} --%><%=o.getId() %></strong></td>
                                                    <td class="align-middle"><strong><%-- ${o.price} --%><%=o.getPrice() %></strong></td>
                                                    <td class="align-middle">
                                                       <!--  <a href="#"><button class="btnSub">-</button></a>  -->
                                                      
                                                       <input name="txtsl<%-- ${o.getId()} --%><%=o.getId() %>" value="<%-- ${o.getAmount} --%><%=o.getAmount() %>" type="number" min="1"  style="width:60px" form="my_form"/>
                                                        <strong><%-- ${o.amount} --%><%=o.getAmount() %></strong>
                                                        
                                                        <!-- <a href="#"><button class="btnAdd">+</button></a> -->
                                                    </td>
                                                     <!-- <td class="align-middle"><a href="htCartController" class="text-dark">
                                                            <button type="submit" class="btn btn-info" name="butsua">Update</button>
                                                        </a>
                                                    </td> -->
                                                    <td class="align-middle"><strong><%=o.getIntomoney() %></strong></td>
                                                    <td class="align-middle"> <!-- <a href="#" class="text-dark"> -->
                                                             <button type="submit" class="btn btn-warning" name="butsua" value="<%=o.getId()%>"form="my_form">Update</button>
                                                            <button type="submit" class="btn btn-danger" name="butxoa" value="<%=o.getId()%>"form="my_form">Delete</button>
                                                        <!-- </a> -->
                                                    </td>
                                                    
                                                </tr> 
                                                <%} %> 
                                            <%-- </c:forEach> --%>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                             <div class="col-lg-6">
                               <!--  <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
                                <div class="p-4">
                                    <div class="input-group mb-4 border rounded-pill p-2">
                                        <input type="text" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                                        <div class="input-group-append border-0">
                                            <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Sử dụng</button>
                                        </div>
                                    </div>
                                </div> -->
                            </div> 
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong>0 $</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>0 $</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán <% long o = 0;
				           if(gh!=null) 
				        	 o = gh.Tongtien();
			             %></strong>
                                            <h5 class="font-weight-bold"><%=o %></h5>
                                        </li>
                                    </ul><a href="#" class="btn btn-dark rounded-pill py-2 btn-block"><button type="submit" name="butmuahang" value="<%=gh.Tongtien()%>" form="my_form2">
                                   Mua hàng </button></a>
                                </div>
                            </div>
                        </div>
                  <% } %>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>

