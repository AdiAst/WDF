
function textValidation(input) {
    if (input.value.length < 2){
        input.classList.add("is-invalid");
		input.classList.remove("is-valid");
    }else {
		input.classList.remove("is-invalid");
		input.classList.add("is-valid");
	}
}

function emailValidation(input) { 
    if(input.value.includes("@") && input.value.includes(".")){
        input.classList.remove("is-invalid");
		input.classList.add("is-valid");
    }else{
        input.classList.add("is-invalid");
		input.classList.remove("is-valid");
    }
 }

function passwordValidation(input) { 
    let password= document.querySelector("#password")
    const btn = document.querySelector("#submit-button")
    if (input.value != password.value ){
        input.classList.add("is-invalid");
		input.classList.remove("is-valid");
        btn.classList.add("disabled");
    }else {
		input.classList.remove("is-invalid");
		input.classList.add("is-valid");
        btn.classList.remove("disabled");
	}
}