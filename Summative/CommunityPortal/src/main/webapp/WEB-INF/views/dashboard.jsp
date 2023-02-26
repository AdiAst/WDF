<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
		<%@ page isELIgnored="false" %>
			<jsp:include page="header.jsp">
				<jsp:param value="${title}" name="title" />
			</jsp:include>
			<div class="container">
				<h1 class="mt-5">User Table</h1>
				<table class="table table-dark table-hover ">
					<thead>
						<tr class="text-center">
							<th>ID</th>
							<th>Email</th>
							<th>Username</th>
							<th>Age</th>
							<th>Gender</th>
							<th>City</th>
							<th>Country</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${users }">
							<tr>

								<td>${user.userLoginId}</td>
								<td>${user.userEmail}</td>
								<c:forEach var="userProfile" items="${userProfiles }">
									<c:if test="${user.userID == userProfile.userID }">
										<td>${userProfile.firstName} ${userProfile.lastName}</td>
										<td>${userProfile.age}</td>
										<td>${userProfile.genderID}</td>
										<c:forEach var="nass" items="${nationality}">
											<c:if test="${nass.cityId == userProfile.cityID}">
												<td>${nass.cityName}</td>
												<td>${nass.countryName}</td>
											</c:if>
										</c:forEach>
									</c:if>
								</c:forEach>
								<td class="d-flex justify-content-center">
									<a href="edit-profile?id=${user.userID}"
										class="btn btn-outline-success me-2">Edit</a>
									<a href="delete?ul=${user.userLoginId}&&up=${user.userID}" class="btn btn-outline-danger">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel"
				tabindex="-1">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content bg-dark text-white">
						<div class="modal-header">
							<h1 class="modal-title fs-5" id="exampleModalToggleLabel">Send Bulk Email</h1>
							<button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form:form action="send-bulk-email" method="post" modelAttribute="BulkEmail" id="form">
								<div class="form-group">
									<form:hidden path="bulkEmailID" class="form-control" required="required" />
								</div>
								<div class="mb-3">
									<label for="subject" class="form-label">Subject</label>
									<form:input path="subject" type="text" class="form-control" required="required" />
								</div>
								<div class="mb-3">
									<label for="content" class="form-label">Content</label>
									<form:textarea path="message" class="form-control" required="required" />
								</div>

								<button type="submit" class="btn btn-outline-success mt-4">Send Email</button>

							</form:form>
						</div>
					</div>
				</div>
			</div>

			<div class="fixed-bottom mb-5 me-3 ms-auto " style="left:auto">
				<a class="btn text-center btn-danger p-3 rounded-circle ms-auto" data-bs-toggle="modal"
					href="#exampleModalToggle" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="26"
						height="26" viewBox="0 0 24 24" style="fill: #fff;">
						<path
							d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm0 2v.511l-8 6.223-8-6.222V6h16zM4 18V9.044l7.386 5.745a.994.994 0 0 0 1.228 0L20 9.044 20.002 18H4z">
						</path>
					</svg>
				</a>
			</div>
			<jsp:include page="footer.jsp"></jsp:include>