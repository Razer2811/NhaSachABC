<%@page import="Modal.loai"%>
<%@page import="Modal.loaibo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	  <title>Giỏ hàng</title>
	  <meta charset="utf-8">
	  <link rel="stylesheet" href="css/style.css">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Cong ty sach ABC</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="tc.jsp">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="giohang.jsp">Giỏ hàng</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Thanh toán</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Lịch sử khách hàng</a>
                    </li>
                    <% 
			          String user = (String) session.getAttribute("un");
			          if(user == null) { 
        			%>
            			<li class="nav-item"><a class="nav-link" href="dangnhap.jsp">Đăng nhập</a></li>
        			<%} else {%>
            			<li class="nav-item"><a class="nav-link" href="dangxuat.jsp">Đăng xuất</a></li>
        			<%} %>
                </ul>
                <span class="navbar-text text-white">
			      	<% if(user != null) {%>
			      		Xin chào: <%=user %>
			      	<%}else { %>
			      		Xin chào: <%=user %>
			      	<%} %>
      			</span>
            </div>
        </div>
    </nav>

<div class="row">
        <div class="col-sm-3">
            <%
            	loaibo lbo = new loaibo();
            	for(loai L: lbo.getloai()){
            %>
            	<a href="tc.jsp?ml=<%= L.getMaloai() %>">
    			<%= L.getTenloai() %>
				</a><br>

            <%} %>
        </div>
        <div class = "col-sm-4">
        	<!-- Giỏ hàng -->
		    <h5 class="fw-bold">GIỎ HÀNG CỦA BẠN</h5>
		    <hr>
		    <p>Giỏ hàng đang trống. Mời bạn</p>
		    <button type="button" class="btn btn-info"><a href="tc.jsp" class="btn btn-muahang">Chọn mua hàng</a></button>
        </div>
</div>

</body>
</html>
