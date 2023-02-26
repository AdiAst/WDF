<form action="thank-you-page" class="text-center">
    <h1>Email Verification</h1>
    <p>We have send verification code to your email, kindly check it and put the code to input field below.</p>

    <div class="mb-3 text-start">
        <label for="email" class="form-label">Code</label>
        <input type="number" class="form-control" required id="code" name="code">
        <div class="valid-feedback">
            Looks good!
        </div>
        <div id="validationServer03Feedback" class="invalid-feedback">
            Your input not using email format!.
        </div>
    </div>

    <button type="submit" class="btn btn-outline-success my-3">Verify</button>
</form>
<a href="register" class="text-decoration-none">Back to Sign Up</a>