<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="header.jsp">
  <jsp:param value="${title}" name="title" />
</jsp:include>
<div
        style="background-image: url(image/banner.jpg); background-position: center; background-size: cover; width: 100%;height: 300px;">
    </div>
    <div class="container mt-5" style="height: 60vh;">
        <form action="process-edit-profile" modelAttribute="profile" method="post">
        <input hidden value="${user.userID}" name="userID">
            <div class="row">
                <div class="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="firstName" value="${user.firstName }" id="firstname" placeholder="name@example.com">
                        <label for="firstname">First Name</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="lastName" value="${user.lastName }" id="lastname" placeholder="name@example.com">
                        <label for="lastname">Last Name</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <select class="form-select form-select-lg mb-3" required name="cityID" aria-label=".form-select-lg example">
                        <c:forEach items="${nationality}" var="n">                        
                        <option value="${n.cityId }">${n.cityName} - ${n.countryName} </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col">
                    <select class="form-select form-select-lg mb-3" required name="genderID" aria-label=".form-select-lg example">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="mb-3">
                        <div class="form-floating mb-3">
                        <input type="number" class="form-control" name="age" value="${user.age}" id="age" placeholder="18">
                        <label for="age">Age</label>
                    </div>
                        
                    </div>
                </div>
            </div>

            <button type="reset" class="btn btn-danger px-5 my-5">Cancel</button>
            <button type="submit" class="btn btn-success px-5">Save</button>
        </form>
    </div>
<jsp:include page="footer.jsp"></jsp:include>