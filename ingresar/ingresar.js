// IMPORTACIONES
import correoelectronico from "../modulos/modulo_correo.js";
import is_valid from "../modulos/modulo_validacion.js";
import remover from "../modulos/modulo_remover.js";
import validarContraseña from '../modulos/modulo_contraseña.js';

// VARIABLES

// Selecciona el primer formulario (<form>) en el documento HTML. Lo asigna a la variable $formulario
const $formulario = document.querySelector("form");

const correo = document.querySelector('#correo_elec_usuarios');
const contraseña = document.querySelector('#contraseña_usuarios');

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
[ correo, contraseña].forEach(input => {
    input.addEventListener("keyup", () => {
        remover(input);
    });
});

// Validaciones específicas
// Validación del correo electrónico
correo.addEventListener("blur", (event) => {
    correoelectronico(event, correo);
});

// Validación de la contraseña
contraseña.addEventListener("blur", (event) => {
    validarContraseña(event, contraseña);
});