<%@ page isELIgnored="false" %>
<jsp:include page="header.jsp">
  <jsp:param value="${title}" name="title" />
</jsp:include>
   <div style="background-image: url(image/banner.jpg); background-position: center; background-size: cover; width: 100%;height: 300px;">
    </div>
    <div class="container mt-5">
        <div class="row d-flex align-items-center">
            <div class="col-sm-2">
                <img src="image/profile-pict.png" width="200px" height="200px" alt="profile-pict">
            </div>
            <div class="col ">
                <h3>${user_profile.firstName} ${user_profile.lastName}</h3>
                <h4>${user_login.userEmail}</h4>
            </div>
            <div class="col text-end">
                <a href="edit-profile?id=${user_profile.userID }" class="btn btn-outline-danger">Edit Profile</a>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Gender</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user_profile.genderID}</h5>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Age</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user_profile.age}</h5>
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
<jsp:include page="footer.jsp"></jsp:include>