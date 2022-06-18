document.getElementById("registrar").addEventListener("click", registrar);
document.getElementById("iniciar_sesion").addEventListener("click", iniciarSesion);
window.addEventListener("resize", anchoPagina);

var formularios = document.querySelector(".formularios");
var login = document.querySelector(".login");
var registrarse = document.querySelector(".registrarse");
var caja_login = document.querySelector(".caja_login");
var caja_registrarse = document.querySelector(".caja_registrarse");


function anchoPagina(){
	if(window.innerWidth > 850){
		caja_login.style.display = "block";
		caja_registrarse.style.display = "block";
	}else{
		caja_registrarse.style.display = "block";
		caja_registrarse.style.opacity = "1";
		caja_login.style.display = "none";
		login.style.display = "block";
		registrarse.style.display = "none";
		formularios.style.left = "0px";
	}
}

anchoPagina();



function iniciarSesion() {

	if (window.innerWidth > 850) {
		registrarse.style.display = "none";
		formularios.style.left = "10px";
		login.style.display = "block";
		caja_registrarse.style.opacity = "1";
		caja_login.style.opacity = "0";
	} else {
		registrarse.style.display = "none";
		formularios.style.left = "0px";
		login.style.display = "block";
		caja_registrarse.style.display = "block";
		caja_login.style.display = "none";
	}

}

function registrar() {

	if (window.innerWidth > 850) {
		registrarse.style.display = "block";
		formularios.style.left = "410px";
		login.style.display = "none";
		caja_registrarse.style.opacity = "0";
		caja_login.style.opacity = "1";
	}else{
		registrarse.style.display = "block";
		formularios.style.left = "0px";
		login.style.display = "none";
		caja_registrarse.style.display = "none";
		caja_login.style.display = "block";
		caja_login.style.opacity = "1";
	}

}