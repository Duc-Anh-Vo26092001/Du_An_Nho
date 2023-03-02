
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page  import="bean.Cart"%>
<%@ page  import="bo.Cartbo"%>
<%@ page  import="bean.Invoice" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pay Page</title>
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
                                    <!-- <form action="PayController" method="post"> </form> -->
                                    
                                    <form action="BuyHistory" id="my_form"></form>
                                        <table class="table">
                                        
                                            <thead>
                                                <tr>
                                                <%--   <%  
      Cartbo gh=(Cartbo)session.getAttribute("gio");
      	if(gh!=null){
         if(gh.cr.size()!=0){
    	  %> --%>
                                                    <!-- <th></th> -->
                                                   
                                                   <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Mã Hóa Đơn</div>
                                                        
                                                    </th>
                                                      <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Mã khách hàng</div>
                                                        
                                                    </th> 
                                                    <!-- <th scope="col" class="border-0 bg-light"></th> -->
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Ngày đặt mua</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Tình trạng</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Tên Khách Hàng</div>
                                                    </th>
                                                    <!--  <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Xác Nhận</div>
                                                        
                                                    </th>  -->
                                                    <!-- <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Tổng Giá</div>
                                                    </th> -->
                                                </tr>
                                            </thead>
                                            
    	  <%
    	  List<Invoice> lstHoaDon ;
    	  lstHoaDon = (List<Invoice>)request.getAttribute("listhoadon");
			for(Invoice s: lstHoaDon){
      	 /*  for(Cart s: gh.cr){ */
      %>
         <tbody>
                 <tr>
                                                    <%-- <th scope="row">
                                                       
                                                        <div class="p-2">
                                                           
                                                            <img src="${o.image}<%=s.getImage() %>" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.name}<%=s.getId() %></a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                        
                                                    </th>  --%>
                                                     <%-- <td class="align-middle"><strong><img src="<%=s.getImage()%>" alt="" width="70"></strong></td>  --%>
                                                     <% if(s.getCondition()==0) {%>
                                                     
                                                     <td class="align-middle"><strong><%-- <%=s.getId() %> --%><%=s.getInvoiceid() %></strong></td> 
                                                     <%-- <td class="align-middle"><strong><%=s.getId() %><% %></strong></td>  --%>
                                                     
                                                    <td class="align-middle"><strong><%--${o.price} --%> <%=s.getuID() %></strong></td> 
                                                    <td class="align-middle"><strong><%-- ${o.price} --%><%-- <%=s.getPrice() %> --%><%=s.getPurchdate() %></strong></td>
                                                    <td class="align-middle"><strong><%-- ${o.price} --%><%-- <%=s.getAmount() %> --%><%=s.getCondition()==0?"Chưa mua":"Đã mua" %></strong></td>
                                                    <td class="align-middle"><strong><%-- ${o.price} --%><%-- <%=s.getAmount() %> --%><%=request.getAttribute("tenmua")%></strong></td>
                                                    <%-- <td class="align-middle">
                                                       <!--  <a href="#"><button class="btnSub">-</button></a>  -->
                                                      
                                                       <input name="txtsl${o.getId()}<%=o.getId() %>" value="${o.getAmount}<%=o.getAmount() %>" type="number" min="1"  style="width:60px" form="my_form"/>
                                                        <strong>${o.amount}<%=o.getAmount() %></strong>
                                                        
                                                        <!-- <a href="#"><button class="btnAdd">+</button></a> -->
                                                    </td> --%>
                                                     <!-- <td class="align-middle"><a href="htCartController" class="text-dark">
                                                            <button type="submit" class="btn btn-info" name="butsua">Update</button>
                                                        </a>
                                                    </td> -->
                                                    <%-- <td class="align-middle"><strong><%=s.getIntomoney() %></strong></td> --%>
                                                    <%-- <td class="align-middle"> <!-- <a href="#" class="text-dark"> -->
                                                             <button type="submit" class="btn btn-warning" name="butsua" value="<%=o.getId()%>"form="my_form">Update</button>
                                                            <button type="submit" class="btn btn-danger" name="butxoa" value="<%=o.getId()%>"form="my_form">Delete</button>
                                                        <!-- </a> -->
                                                    </td> --%>
                                                </tr> 
                                                 
                                                 <tr>
      	                                           <%-- <td align="right" colspan=5 width="100">Thành tiền: <%=gh.Tongtien() %></td>  --%>
      	                                            <td align="right" colspan=10>
      	                                           <button class="btn btn-success" name="butxacnhanmua" value="<%=s.getInvoiceid()%>" type="submit" form="my_form">Xác nhận mua</button> 

      	                                           </td>
                                               </tr>
                                            
                                               <%} %>  
                                            <%-- </c:forEach> --%>
                                        </tbody>
                                        <%} %>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>
      
       <%-- <%} else{
    	   try{
    		   if(request.getAttribute("tk")!=null){
    	   			%>
    	   			
    	   			<h2>Thanh toán thành công!</h2>
    	   			<%
    	   
       			}
    		   else {%>
    		   	<h2>Chưa chọn sản phẩm</h2>
    		   <%}
    		   }catch(Exception e){
    			   e.printStackTrace();
    			   }
		
       }}else{
     		 try{
    		   if(request.getAttribute("tk")!=null){
    	   			%>
    	   			
    	   			<h2>Thanh toán thành công!</h2>
    	   			<%
    	   
       			}
    		   else {%>
    		   	<h2>Chưa chọn sản phẩm</h2>
    		   <%}
    		   }catch(Exception e){e.printStackTrace();}} %> --%>
 
</div>
</div>
</div>
</div>

</body>
</html>