<jsp:include page="header.jsp">
  <jsp:param value="${title}" name="title" />
</jsp:include>
    <div class="container d-flex justify-content-center align-items-center" style="height: 90vh;">
    <div class="card shadow-lg w-50 d-flex justify-content-center align-items-center" >
        <img src="image/undraw_winners_re_wr1l.svg" width="300px" height="300px" style="transform: translateY(-50%); position: absolute;" alt="happy people">
        <div class="card-body text-center" style="margin-top: 170px;">
          <h5 class="card-title">Thank you, <%=session.getAttribute("who_register") %></h5>
          <p class="card-text">Now you are part of ABC Community Portal, please login so <br> you can
            explore Community Portal itself</p>
          <a href="login" class="btn btn-danger">Sign In</a>
        </div>
      </div>
   </div>
<jsp:include page="footer.jsp"></jsp:include>