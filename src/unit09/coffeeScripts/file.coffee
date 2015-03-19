window.checkCreds = (form) ->
    nameVar = form.name.value
    passwordVar = form.password.value

    result = ""

    if nameVar is "Taylor" and passwordVar is "iamcool"
    	result = "YOU ARE THE CORRECT PERSON"
   	else
   		result = "INCORRECT CREDENTIALS"

    document.getElementById("content").innerHTML = result
