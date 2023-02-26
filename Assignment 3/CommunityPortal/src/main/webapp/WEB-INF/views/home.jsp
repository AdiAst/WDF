<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" /><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Home Page</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="m-0 border-0 overflow-hidden" >
<%@ include  file="header.jsp"%>
    <img src="image/herobanner-background.png" style="position: absolute; left: 0;top: 0; z-index: -2;" width="400px" height="auto" alt="decoration">
    <div class="container" style="height: 70vh">
        <div class="row" style="margin-top: 200px;">
            <div class="col-sm-6">
                <div class="">
                    <div class="card-body">
                        <h2 class="car-subtitle text-muted">Looking for Job?</h2>
                        <h1 class="card-title">COME JOIN US</h1>
                        <p class="card-text">ABC Community Portal is a place where everyone can search a job
                            whatever they want and apply for it.</p>
                        <div class="mt-5">
                            <a href="form?form=Register" class="btn btn-outline-danger">Sign Up</a>
                            <a href="form?form=Login" class="btn btn-danger">Sign In</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <img src="image/worker.png" style="position: absolute; right: 0;top: 0;z-index: -2" width="1000px" height="auto" alt="decoration">
<%@ include  file="footer.jsp"%>
</body>
</html>
