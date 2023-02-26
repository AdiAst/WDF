<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<jsp:include page="header.jsp">
	<jsp:param value="${title}" name="title" />
</jsp:include>
<div class="container">
	<h1 class="my-3">Explore</h1>
	<div class="row">
		<div class="col-sm-8 border border-2 rounded">
			<!-- Create Threads -->
			<div class="row p-3 border-2 border-bottom">
				<div class="col">
					<form action="" class="form-floating">
						<h2>Hello, ${user_profile.firstName} ${user_profile.lastName}</h2>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="title" placeholder="insert title here">
							<label for="title">Title</label>
						</div>
						<div class="form-floating">
							<textarea class="form-control" id="description" style="height: 100px"
								placeholder="description here"></textarea>
							<label for="description">Description</label>
						</div>

						<button type="submit" class="btn btn-outline-success mt-3 px-5">Post</button>
					</form>
				</div>
			</div>

			<!-- Threads -->
			<div class="row p-3 border-2 ">
				<div class="col">
					<c:forEach var="thread" items="${threads}">
						<div class="card mb-3 ">
							<img src="image/form-bg.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${thread.postTitle}</h5>
								<p class="card-text">${thread.postDescription}</p>
								<p class="card-text"><small class="text-muted">${thread.timePosted}</small>
								</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- right content -->
		<div class="col-sm-4 ">
			<div class="row border border-2 rounded ms-2">
				<div class="col py-3">
					<h4 class="mb-3">People around You</h4>
					<c:forEach items="${userProfiles }" var="up">
					<div class="card mb-3 p-1">
						<div class="row g-0">
						  <div class="col-md-4 text-center">
							<img src="image/profile-pict.png" width="100px" height="100px" class="img-fluid rounded-start" alt="photoprofile">
						  </div>
						  <div class="col-md-8">
							<div class="card-body">
							  <h5 class="card-title">${up.firstName} ${up.lastName}</h5>
							</div>
						  </div>
						</div>
					</div>
					</c:forEach>
					
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>