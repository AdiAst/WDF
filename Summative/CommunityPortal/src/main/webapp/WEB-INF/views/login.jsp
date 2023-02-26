<form action="process-login" class="text-center" modelAttribute="user" method="post">
    <% if(request.getParameter("error")!=null){ %>
        <div class="alert alert-danger" role="alert">
            <%=request.getParameter("error") %>
        </div>
        <%} %>
            <h1>Sign In</h1>
            <p>Please type your email and password, and you can access ABC Company Portal</p>

            <div class="mb-3 text-start">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" onkeyup="emailValidation(this)" required id="email"
                    name="email" placeholder="name@example.com">
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div id="validationServer03Feedback" class="invalid-feedback">
                    Your input not using email format!.
                </div>
            </div>

            <div class="mb-3 text-start">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" onkeyup="textValidation(this)" required id="password"
                    name="password">
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div id="validationServer03Feedback" class="invalid-feedback">
                    Please Type Atleast 2 Character.
                </div>
            </div>

            <button type="submit" class="btn btn-outline-success my-3">LOGIN</button>
</form>
<a href="register" class="text-decoration-none">Don't have account?</a>
<a href="forget-password" class="text-decoration-none">Forget Password</a>