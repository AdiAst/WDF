<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags"%>  
<!DOCTYPE html>
<html lang="en" style="overflow-x: hidden">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title><%= request.getParameter("form") %></title>
    <script src="js/validation.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  </head>

  <body>
      <%@ include file="header.jsp" %>

    <div class="container-fluid d-flex justify-content-center align-items-center" style="height: 90vh;">
        <div class="card mb-3 shadow-lg rounded" style="max-width: 1440px;">
            <div class="row g-0">
                <div class="col-md-8">
                    <img src="image/form-bg.jpg" class="img-fluid rounded-start" alt="form background">
                </div>
                <div class="col-md-4 ">
                    <div class="card-body text-center d-flex justify-content-center align-items-center flex-column">
                    <% if(request.getParameter("form").equals("Register")){ %> 
                      <%@ include file="register.jsp" %> 
                    <%} if(request.getParameter("form").equals("Email Verification")){%> 
                      <%@ include file="email_verification.jsp" %> 
                    <%} if(request.getParameter("form").equals("Forget Password")){%>
                      <%@ include file="forget_password.jsp" %> 
                    <%} if(request.getParameter("form").contains("Login")){ %>
                      <%@ include file="login.jsp" %> 
                    <%} %>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <%@ include file="footer.jsp" %>
  </body>
</html>
