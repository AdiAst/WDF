<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
    <form action="process-register" modelAttribute="user" class="text-center" method="post">
    <% if(request.getParameter("error")!=null){ %>
    <div class="alert alert-danger" role="alert">
	 <%= request.getParameter("error") %>
	</div>
    <%} %>
   
        <h1>Sign Up</h1>
        <p class="mb-4">By creating an account you can join ABC Company Portal, just insert your firstname,
            lastname, email, password and your account will be created</p>

        <div class="mb-3 text-start">
            <label for="firstname" class="form-label">First Name</label>
            <input type="text" class="form-control" onkeyup="textValidation(this)" required id="firstname"
                name="firstname" placeholder="Steve">
            <div class="valid-feedback">
                Looks good!
            </div>
            <div id="validationServer03Feedback" class="invalid-feedback">
                Please Type Atleast 2 Character.
            </div>
        </div>
        <div class="mb-3 text-start">
            <label for="lastname" class="form-label">Last Name</label>
            <input type="text" class="form-control" onkeyup="textValidation(this)" required id="lastname"
                name="lastname" placeholder="Furhan">
            <div class="valid-feedback">
                Looks good!
            </div>
            <div id="validationServer03Feedback" class="invalid-feedback">
                Please Type Atleast 2 Character.
            </div>
        </div>
        <div class="mb-3 text-start">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" onkeyup="emailValidation(this)" required id="email" name="userEmail"
                placeholder="name@example.com">
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
                name="userPassword">
            <div class="valid-feedback">
                Looks good!
            </div>
            <div id="validationServer03Feedback" class="invalid-feedback">
                Please Type Atleast 2 Character.
            </div>
        </div>
        <div class="mb-3 text-start">
            <label for="confirmpassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" onkeyup="passwordValidation(this)" required id="confirmpassword"
                name="confirmpassword">
            <div class="valid-feedback">
                Looks good!
            </div>
            <div id="validationServer03Feedback" class="invalid-feedback">
                Your Password doesn't Match.
            </div>
        </div>

        <button type="submit" id="submit-button" class="btn btn-outline-success my-3">SEND CODE</button>
    </form>

    <a href="login" class="text-decoration-none">Have account?</a>