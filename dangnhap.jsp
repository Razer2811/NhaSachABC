<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Đăng nhập</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
.btn-color{
  background-color: #0e1c36;
  color: #fff;
  
}

.profile-image-pic{
  height: 200px;
  width: 200px;
  object-fit: cover;
}



.cardbody-color{
  background-color: #ebf2fa;
}

a{
  text-decoration: none;
}
strong{
  margin-bottom : 5px;
}
</style>
<body>
<!-- Thanh menu -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Công ty sách ABC</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item"><a class="nav-link" href="tc.jsp">Trang chủ</a></li>
        <li class="nav-item"><a class="nav-link" href="giohang.jsp">Giỏ hàng</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Thanh toán</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Lịch sử khách hàng</a></li>
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

<div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <h2 class="text-center text-dark mt-5">Đăng Nhập</h2>
        <div class="card my-5">
          <form action = "ktdangnhap.jsp" method = "post" class="card-body cardbody-color p-lg-5">
            <div class="mb-3">
              	<label for="Username" class="form-label fw-bold">Tên đăng nhập:</label>
              	<input type="text" class="form-control" name = "txtun"
                placeholder="Tên đăng nhập">
            </div>
            <div class="mb-3">
            	<label for="password" class="form-label fw-bold">Mật khẩu:</label>
              	<input type="password" class="form-control" name = "txtpass" placeholder="Mật khẩu">
            </div>
            <div class="text-center"><button type="submit" class="btn btn-color px-5 mb-5 w-100">Login</button></div>
            <div id="emailHelp" class="form-text text-center mb-5 text-dark">Quên mật khẩu ?<a href="#" class="text-dark fw-bold">  Đăng ký</a>
            </div>
          </form>
        </div>

      </div>
    </div>
  </div>

</body>
</html>
