<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="form" %>    
    <%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<title>Edit Profile</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
<div
        style="background-image: url(image/banner.jpg); background-position: center; background-size: cover; width: 100%;height: 300px;">
    </div>
    <div class="container mt-5" style="height: 60vh;">
        <form action="process-edit-profile" modelAttribute="profile" method="post">
        <input hidden value="${user_profile.userID}" name="userID">
            <div class="row">
                <div class="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="firstName" value="${user_profile.firstName }" id="firstname" placeholder="name@example.com">
                        <label for="firstname">First Name</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="lastName" value="${user_profile.lastName }" id="lastname" placeholder="name@example.com">
                        <label for="lastname">Last Name</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <select class="form-select form-select-lg mb-3" name="cityID" aria-label=".form-select-lg example">
                        <option selected hidden>Provinces</option>
                        <form:forEach items="${nationality}" var="n">                        
                        <option value="${n.cityId }">${n.cityName} ${n.countryName} </option>
                        </form:forEach>
                    </select>
                </div>
                <div class="col">
                    <select class="form-select form-select-lg mb-3" name="genderID" aria-label=".form-select-lg example">
                        <option selected>Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="mb-3">
                        <div class="form-floating mb-3">
                        <input type="number" class="form-control" name="age" value="${user_profile.age}" id="age" placeholder="18">
                        <label for="age">Age</label>
                    </div>
                        
                    </div>
                </div>
            </div>

            <button type="reset" class="btn btn-danger px-5 my-5">Cancel</button>
            <button type="submit" class="btn btn-success px-5">Save</button>
        </form>
    </div>
<%@ include file="footer.jsp" %>
</body>
</html>