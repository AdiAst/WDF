<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<title>Thank you</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<%@ include file="header.jsp" %>
    <div class="container d-flex justify-content-center align-items-center" style="height: 90vh;">
    <div class="card shadow-lg w-50 d-flex justify-content-center align-items-center" >
        <img src="image/undraw_winners_re_wr1l.svg" width="300px" height="300px" style="transform: translateY(-50%); position: absolute;" alt="happy people">
        <div class="card-body text-center" style="margin-top: 170px;">
          <h5 class="card-title">Thank you, <%=session.getAttribute("who_register") %></h5>
          <p class="card-text">Now you are part of ABC Community Portal, please login so <br> you can
            explore Community Portal itself</p>
          <a href="form?form=Login" class="btn btn-danger">Sign In</a>
        </div>
      </div>
   </div>
<%@ include file="footer.jsp" %>
</body>
</html>