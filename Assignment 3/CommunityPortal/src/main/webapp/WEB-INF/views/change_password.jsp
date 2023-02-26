
<%@ page isELIgnored="false" %>
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
    <title>Change Password</title>
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
                    <form action="process-change-password" modelAttribute="user"  class="text-center" method="post">
        <h1>Change Password</h1>
		<input type="number" name="userLoginId" value="${user.userLoginId}" hidden>
		<input type="number" name="roleID" value="${user.roleID}" hidden>
		<input type="number" name="userID" value="${user.userID}" hidden>
		<input type="number" name="userEmail" value="${user.userEmail}" hidden>
        <div class="mb-3 text-start">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" onkeyup="textValidation(this)" required id="password"
                name="userPassword">
            <div class="valid-feedback">
                Looks good!
            </div>
            <div id="validationServer03Feedback" class="invalid-feedback">
                Please Type Atleast 2 Character.
            </div>
        </div>
        <div class="mb-3 text-start">
            <label for="confirmpassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" onkeyup="passwordValidation(this)" required id="confirmpassword"
                name="confirmpassword">
            <div class="valid-feedback">
                Looks good!
            </div>
            <div id="validationServer03Feedback" class="invalid-feedback">
                Your Password doesn't Match.
            </div>
        </div>

        <button type="submit" class="btn btn-outline-success my-3">CHANGE</button>
    </form>

    <a href="form?form=Login" class="text-decoration-none">Back to Sign in</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <%@ include file="footer.jsp" %>
  </body>
</html>
    