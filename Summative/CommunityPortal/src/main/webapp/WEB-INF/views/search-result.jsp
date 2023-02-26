<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="header.jsp">
  <jsp:param value="${title}" name="title" />
</jsp:include>
<div class="container" style="height: 90vh">
        <h2 class="my-3">You Searched For :<%= request.getParameter("search") %></h2>
        <div class="row">
            <div class="col-sm-8">
                <div class="navbar navbar-expand-lg rounded border border-muted">
                    <div class="container-fluid">
                        <h1 class="navbar-brand text-danger" href="#">Short by :</h1>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav">
                                <button class="btn btn-outline-danger me-3">All</button>
                                <button class="btn btn-outline-danger me-3">People</button>
                                <button class="btn btn-outline-danger">Group</button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <c:forEach items="${search_result}" var="s">
                <a href="other-profile?id=${s.userID }" class="text-decoration-none text-dark">
                <div class="card my-3 ">
                    <div class="row g-0">
                        <div class="col-md-4 d-flex justify-content-center align-items-center">
                            <img src="image/profile-pict.png" width="150px" height="150px"
                                class="img-fluid rounded-start" alt="profile picture">
                        </div>
                        
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title ">${s.firstName} ${s.lastName}</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural
                                    lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                </div>
                </a>
                </c:forEach>
                
            </div>
            
            <div class="col-sm-4">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Search History</div>
                    <div class="card-body text-secondary">
                        <p class="card-title">Secondary card title</p>
                        <p class="card-title">Secondary card title</p>
                        <p class="card-title">Secondary card title</p>   
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="footer.jsp"></jsp:include>