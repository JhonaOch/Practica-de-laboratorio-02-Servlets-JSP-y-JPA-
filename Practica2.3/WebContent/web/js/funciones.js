var cedula = false
var nombres = false
var apellidos = false
var correo = false
var contrasena = false



function validarNumeros(event, label, element) {
    let span = document.getElementById(label)
    let letra = event.which || event.keyCode;

    if (letra >= 96 && letra <= 105 || letra == 8) {
        span.style.display = "none"
        if (element.id == 'cedula') {
            validarCedula(label, element)
        }
    } else {
        span.innerHTML = "Introduzca Numeros"
        span.style.display = "block"
        let text = element.value
        text = text.substring(0, text.length - 1)
        element.value = text
    }
}

function validarCedula(label, element) {
    let span = document.getElementById(label)
    if (element.value.length != 10) {
        span.innerHTML = "Cedula incorrecta"
        span.style.display = "block"
        cedula = false
    } else {
        span.style.display = "none"
        cedula = true
    }
}

function validarLetras(event, label, element) {
    let span = document.getElementById(label)
    let letra = event.which || event.keyCode;
    console.log(letra)
    if (letra >= 65 && letra <= 90 || letra == 32 || letra == 8 || letra == 16) {
        span.style.display = "none"
        validarNombres(label, element)
    } else {
        span.innerHTML = "Introdusca letras"
        span.style.display = "block"
        let text = element.value
        text = text.substring(0, text.length - 1)
        element.value = text
    }
}

function validarNombres(label, element) {
    let span = document.getElementById(label)
    let text = element.value
    if (text.split(" ").length > 2) {
        if (element.id == 'nombres') {
            span.innerHTML = "Nombres incorrectos"
            nombres = false
        } else {
            span.innerHTML = "Apellidos incorrectos"
            apellidos = false
        }
        span.style.display = "block"
    } else {
        nombres = true
        apellidos = true
        span.style.display = "none"
    }
}




function validarPass(label) {
    let span = document.getElementById(label)
    let pass1 = document.getElementById('password').value
    let pass2 = document.getElementById('password2').value
    if (pass1 != pass2) {
        span.innerHTML = "contrasenas incorrectas"
        span.style.display = "block"
        pass = false
    } else {
        span.style.display = "none"
        pass = true
    }
}