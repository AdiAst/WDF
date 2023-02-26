<jsp:include page="header.jsp">
    <jsp:param value="${title}" name="title" />
</jsp:include>
<img src="image/herobanner-background.png" style="position: absolute; left: 0;top: 0; z-index: -2;" width="400px"
    height="auto" alt="decoration">
<div class="container" style="height: 70vh">
    <div class="row" style="margin-top: 200px;">
        <div class="col-sm-6">
            <div class="">
                <div class="card-body">
                    <h2 class="car-subtitle text-muted">Looking for Job?</h2>
                    <h1 class="card-title">COME JOIN US </h1>
                    <p class="card-text">ABC Community Portal is a place where everyone can search a job
                        whatever they want and apply for it.</p>
                    <div class="mt-2">
                        <a href="register" class="btn btn-outline-danger">Sign Up</a>
                        <a href="login" class="btn btn-danger">Sign In</a>
                    </div>

                    <div class="mt-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="image/worker1.jpg" height="300px" class="rounded w-50 d-block w-100" alt="worker1">
                                    
                                </div>
                                <div class="carousel-item">
                                    <img src="image/worker2.jpg" height="300px" class="rounded w-50 d-block w-100" alt="worker2">
                                    
                                </div>
                                <div class="carousel-item">
                                    <img src="image/worker3.jpg" height="300px" class="rounded w-50 d-block w-100" alt="worker3">
                                    
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#carouselExampleControls" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<img src="image/worker.png" style="position: absolute; right: 0;top: 0;z-index: -2" width="1000px" height="auto"
    alt="decoration">
<jsp:include page="footer.jsp"></jsp:include>