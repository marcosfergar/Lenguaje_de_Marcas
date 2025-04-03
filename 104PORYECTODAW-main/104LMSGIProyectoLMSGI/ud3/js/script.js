var titulo = document.getElementById("titulo")
var parrafo = document.getElementsByClassName("parrafo")
var cuerpo = document.getElementById("cuerpo")

titulo.innerHTML = "UD3.1 DOCUMENT OBJECT MODEL"
parrafo[0].innerText = "Parrafo 1 modificado"
parrafo[1].innerText = "Parrafo 2 modificado"
parrafo[2].innerText = "Parrafo 3 modificado"

//parrafo[0].outerHTML = "<div>Parrafo 11 modificado</div>"

cuerpo.style.backgroundColor="#f4f4f4"
cuerpo.style.textAlign="center"

titulo.style.color="#333"
titulo.style.fontWeight="bold"
titulo.style.marginBottom="15px"
titulo.style.textTransform="uppercase"

for (var i = 0; i < parrafo.length; i++) {
    parrafo[i].style.fontSize="18px"
    parrafo[i].style.padding="10px"
    parrafo[i].style.width="60%"
    parrafo[i].style.borderLeft="solid 5px"
    parrafo[i].style.borderRadius = "5px"
    parrafo[i].style.lineHeight="1.6"
    parrafo[i].style.margin = "10px auto"
}

parrafo[0].style.color="#e74c3c"
parrafo[0].style.backgroundColor="#ffe6e6"
parrafo[0].style.borderColor="#c0392b"

parrafo[1].style.color="#2ecc71"
parrafo[1].style.backgroundColor="#eaffea"
parrafo[1].style.borderColor="#27ea60"

parrafo[2].style.color="#3498db"
parrafo[2].style.backgroundColor="#e6f2ff"
parrafo[2].style.borderColor="#2980b9"

document.addEventListener("DOMContentLoaded", function(){
    document.getElementById("boton1").addEventListener("click", saludar);
    document.getElementById("boton2").addEventListener("click", cambiarColor);
    document.getElementById("boton3").addEventListener("click", cambiarParrafos);
} // fin de la función
) // fin AddEventListener
let control = true

function saludar() {
    alert("Hola")
}

function cambiarColor() {
    let cuerpo = document.getElementById("cuerpo")
    var titulo = document.getElementById("titulo")
    var boton = document.getElementById("boton2")

    if (boton.value == "Fondo oscuro") {
        cuerpo.style.backgroundColor = "black"
        titulo.style.color = "white"
        boton.value = "Fondo claro"
    } else {
        cuerpo.style.backgroundColor="#f4f4f4"
        titulo.style.color="#333"
        boton.value = "Fondo oscuro"
    }
    
}

function cambiarParrafos() {
    //et parrafo = document.getElementsByClassName("parrafo")
    let parrafo = document.querySelectorAll(".parrafo")
    if (control) {
        for (let i = 0; i < parrafo.length; i++) {
            parrafo[i].style.fontSize="25px"
            parrafo[i].style.letterSpacing = "5px"
            parrafo[i].style.rotate = "1deg"
            parrafo[i].style.fontWeight = "bold"
        }
        control = false
    } else {
        for (let i = 0; i < parrafo.length; i++) {
            parrafo[i].style.fontSize="18px"
            parrafo[i].style.padding="10px"
            parrafo[i].style.width="60%"
            parrafo[i].style.borderLeft="solid 5px"
            parrafo[i].style.borderRadius = "5px"
            parrafo[i].style.lineHeight="1.6"
            parrafo[i].style.margin = "10px auto"
            parrafo[i].style.letterSpacing = "0px"
            parrafo[i].style.fontWeight = "normal"
            parrafo[i].style.rotate = "0deg"
        }
        control = true
    }
    
}