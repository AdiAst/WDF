<jsp:include page="header.jsp">
  <jsp:param value="${title}" name="title" />
</jsp:include>

<div class="container-fluid d-flex justify-content-center align-items-center" style="height: 90vh;">
  <div class="card mb-3 shadow-lg rounded" style="max-width: 1440px;">
    <div class="row g-0">
      <div class="col-md-8">
        <img src="image/form-bg.jpg" class="img-fluid rounded-start" alt="form background">
      </div>
      <div class="col-md-4 ">
        <div class="card-body text-center d-flex justify-content-center align-items-center flex-column">
        <% if(request.getAttribute("form").equals("register")){ %> 
          <%@ include file="register.jsp" %> 
        <%} if(request.getAttribute("form").equals("emailVerify")){%> 
          <%@ include file="email_verification.jsp" %> 
        <%} if(request.getAttribute("form").equals("forgetPass")){%>
          <%@ include file="forget_password.jsp" %> 
        <%} if(request.getAttribute("form").equals("changePass")){%>
          <%@ include file="change_password.jsp" %> 
        <%} if(request.getAttribute("form").equals("login")){ %>
          <%@ include file="login.jsp" %> 
        <%} %>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>