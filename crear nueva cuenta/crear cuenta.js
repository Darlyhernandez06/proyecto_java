// IMPORTACIONES
import correoelectronico from "../modulos/modulo_correo.js";
import sololetras from "../modulos/modulo_sololetras.js";
import solonumeros from "../modulos/modulo_solonumeros.js";
import is_valid from "../modulos/modulo_validacion.js";
import remover from "../modulos/modulo_remover.js";
import validarContraseña from '../modulos/modulo_contraseña.js';

// VARIABLES

// Selecciona el primer formulario (<form>) en el documento HTML. Lo asigna a la variable $formulario
const $formulario = document.querySelector("form");

// Captura los datos introducidos en los campos del formulario
const nombres = document.querySelector('#nombre_usuarios');
const apellidos = document.querySelector('#apellido_usuarios');
const correo = document.querySelector('#correo_elec_usuarios');
const telefono = document.querySelector('#telefono_usuarios');
const direccion = document.querySelector('#dirrec_usuarios');
const contraseña = document.querySelector('#password_usuarios');
const confirmarContraseña = document.querySelector('#password_confirmacion');
const descripcion = document.querySelector('#descripcion_usuarios');

// Se añade un listener al formulario que llama a la función validar cuando se intenta enviar el formulario.
$formulario.addEventListener("submit", (event) => {
    if (!is_valid(event, "form [required]"))  {
        event.preventDefault(); // Prevenir el envío si la validación falla
        alert("Validación fallida");
    } else {
        alert("Validación exitosa");
    }
});

// Se añade un listener para el evento keyup en cada uno de los campos. Cuando se suelta una tecla, se llama a la función remover para verificar el estado del campo.
[nombres, apellidos, correo, telefono, direccion, contraseña, confirmarContraseña, descripcion].forEach(input => {
    input.addEventListener("keyup", () => {
        remover(input);
    });
});

// Confirmación de contraseña
confirmarContraseña.addEventListener("blur", () => {
    // Verifica que las contraseñas ingresadas coincidan
    if (contraseña.value === confirmarContraseña.value) {
        // Elimina la clase error si las contraseñas coinciden
        contraseña.classList.remove("error");
        confirmarContraseña.classList.remove("error");
        // Añade la clase correcto
        contraseña.classList.add("correcto");
        confirmarContraseña.classList.add("correcto");
        // Elimina el mensaje de error si las contraseñas coinciden
        const existingErrorMessage = document.querySelector(".error-message");
        if (existingErrorMessage) {
            existingErrorMessage.remove(); // Elimina el mensaje de error existente
        }
    } else {
        // Verifica si ya hay un mensaje de error visible
        if (!document.querySelector(".error-message")) {
            // Crea un nuevo elemento div para mostrar el mensaje de error
            const errorMessage = document.createElement("div");
            errorMessage.classList.add("error-message"); // Añade una clase para estilizar el mensaje
            errorMessage.textContent = 'Las contraseñas no coinciden'; // Establece el texto del mensaje
            confirmarContraseña.parentElement.appendChild(errorMessage); // Añade el mensaje de error al DOM
        }
        // Agrega la clase error a los campos de contraseña
        contraseña.classList.add("error");
        confirmarContraseña.classList.add("error");
        // Elimina la clase correcto si estaba presente
        contraseña.classList.remove("correcto");
        confirmarContraseña.classList.remove("correcto");
    }
});


// Validaciones específicas

// Validación del teléfono
telefono.addEventListener("keypress", solonumeros);

// Validación del nombre
nombres.addEventListener("keypress", (event) => {
    sololetras(event, nombres);
});

// Validación del apellido
apellidos.addEventListener("keypress", (event) => {
    sololetras(event, apellidos);
});

// Validación del correo electrónico
correo.addEventListener("blur", (event) => {
    correoelectronico(event, correo);
});

// Validación de la contraseña
contraseña.addEventListener("blur", (event) => {
    validarContraseña(event, contraseña);
});;

// P@ssw0rd1
// darlyhernadez0624@gmail.com