<%@page import="Modal.sachbo"%>
<%@page import="Modal.loai"%>
<%@page import="Modal.loaibo"%>
<%@ page import="Modal.sach" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	  <title>Trang chủ</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="css/style.css">
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
        <div class="col-sm-6">
			    <div class="row">
			        <%
			        	request.setCharacterEncoding("utf-8");
			        	response.setCharacterEncoding("utf-8");
			            sachbo sbo = new sachbo();
			            ArrayList<sach> ds = sbo.getsach();
			            String ml = request.getParameter("ml");
			            String key = request.getParameter("txtsach");
			            if(ml != null) ds= sbo.TimMa(ml);
			            else 
			            	if (key != null) ds = sbo.Tim(key);
			            for(sach s : ds){
			        %>
			        <div class="col-sm-4">
			            <img src="<%=s.getAnh()%>" width="200" height="200" ><br>
			            <%= s.getTensach() %><br>
			            <%= s.getTacgia() %><br>
			            <%= s.getGia() %><br>
			            <a href = "giohangcontroller.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh()%>">
			            	<img src="anh/buynow.jpg">
			            </a>
			        </div>
			        <%
			            }
			        %>
			    </div>
		</div>
        <div class="col-sm-3">
            <form action ="tc.jsp">
	            <div class="col-sm-8">
	            	<input type="text" name="txtsach" class="form-control" placeholder="Nhập tên sách, tác giả...">
	        	</div>
	        	<div class="col-sm-4">
	            	<button type="submit" class="btn btn-primary">Tìm kiếm</button>
	        	</div>
            </form>
       </div>
    </div>
</body>
</html>
