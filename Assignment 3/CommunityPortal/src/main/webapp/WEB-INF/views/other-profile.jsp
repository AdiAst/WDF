
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<title>Profile</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
   <div style="background-image: url(image/banner.jpg); background-position: center; background-size: cover; width: 100%;height: 300px;">
    </div>
    <div class="container mt-5">
        <div class="row d-flex align-items-center">
            <div class="col-sm-2">
                <img src="image/profile-pict.png" width="200px" height="200px" alt="profile-pict">
            </div>
            <div class="col ">
                <h3>${user.firstName} ${user.lastName}</h3>
            </div>
            <div class="col text-end">
                <a href="" class="btn btn-outline-danger">Follow +</a>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Gender</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user.genderID}</h5>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Age</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user.age}</h5>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-2">
            <div class="col-sm">
                <div class="card border-secondary mb-3">
                    <div class="card-header">City</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user_nationality.cityName}</h5>
                    </div>
                </div>
            </div>
            <div class="col-sm">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Country</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user_nationality.countryName}</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>