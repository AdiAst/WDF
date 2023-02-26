<form action="change-password" class="text-center" method="post">
    <h1>Forget Password</h1>
    <p>Type your email and we will send you a massage to change your password. </p>

    <div class="mb-3 text-start">
        <label for="email" class="form-label">Email address</label>
        <input type="email" class="form-control" onkeyup="emailValidation(this)" required id="email" name="email"
            placeholder="name@example.com">
        <div class="valid-feedback">
            Looks good!
        </div>
        <div id="validationServer03Feedback" class="invalid-feedback">
            Your input not using email format!.
        </div>
    </div>


    <button type="submit" class="btn btn-outline-success my-3">SEND CODE</button>
</form>
<a href="login" class="text-decoration-none">Back to Sign in</a>