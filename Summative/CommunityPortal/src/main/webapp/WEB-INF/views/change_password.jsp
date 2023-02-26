<%@ page isELIgnored="false" %>
<form action="process-change-password" modelAttribute="user" class="text-center" method="post">
    <h1>Change Password</h1>
    <input type="number" name="userLoginId" value="${user.userLoginId}" hidden>
    <input type="number" name="roleID" value="${user.roleID}" hidden>
    <input type="number" name="userID" value="${user.userID}" hidden>
    <input type="email" name="userEmail" value="${user.userEmail}" hidden>
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

    <button type="submit" class="btn btn-outline-success my-3">CHANGE</button>
</form>

<a href="login" class="text-decoration-none">Back to Sign in</a>