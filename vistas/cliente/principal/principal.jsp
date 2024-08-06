<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Metadatos del documento -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>¡BIENVENIDOS A MEGAPAQUETES!</title>
    <!-- Enlace al archivo CSS para estilos -->
    <link rel="stylesheet" href="principal.css">
    <!-- Favicon para el navegador -->
    <link rel="icon" type="image/svg" href="../../../imagenes/logo.svg">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <!-- Barra de navegación -->
    <nav class="navbar">
        <!-- Contenedor del logo de la empresa -->
        <div class="navbar__logo">
            <img src="../../../imagenes/logo.svg" alt="Logo">
        </div>
        <!-- Contenedor del título y subtítulo del navbar -->
        <div class="navbar__contenedor">
            <div class="navbar__title"><strong>MEGAPAQUETES</strong></div>
            <div class="navbar__subtitle">FRUTAS . VERDURAS . TUBERCULOS . HORTALIZAS</div>
        </div>
        <!-- Enlaces de navegación principales -->
        <a href="#" class="navbar__link">Inicio</a>
        <!-- Menú desplegable para Megamenu -->
        <div class="menu">
            <a class="menu__toggle" href="#">Megamenu <img src="../../../imagenes/Vector.svg" alt="Vector"></a>
            <div class="menu__container">
                <h2 class="menu__heading"><strong>MEGA</strong>PAQUETES</h2>
                <a class="menu__link" href="#">Verduras</a>
                <a class="menu__link" href="#">Frutas</a>
                <a class="menu__link" href="#">Tubérculos/Hortalizas</a>
            </div>
        </div>
        <!-- Enlace a las ofertas -->
        <a href="#" class="navbar__link">Ofertas</a>
        <!-- Menú desplegable para Sobre Nosotros -->
        <div class="menu">
            <a class="menu__toggle" href="#">Sobre Nosotros <img src="../../../imagenes/Vector.svg" alt="Vector"></a>
            <div class="menu__container">
                <h2 class="menu__heading"><strong>MEGA</strong>PAQUETES</h2>
                <a class="menu__link" href="#">Sobre Nosotros</a>
                <a class="menu__link" href="#">Contacto</a>
                <a class="menu__link" href="#">Políticas (Términos y Condiciones)</a>
            </div>
        </div>
        <!-- Enlace al carrito de compras -->
        <a href="#" class="navbar__link">Carrito de Compras</a>
        <!-- Botones para iniciar sesión y registrarse -->
        <a class="button" href="../ingresar/ingresar.html" style="text-decoration: none;">Iniciar sesión</a>
        <a class="button" href="../crear nueva cuenta/crear cuenta.html" style="text-decoration: none;">Registrarse</a>
    </nav>

    <!-- Sección principal de la pagina -->
    <section class="contenedor__principal">
        <!-- Contenedor del título -->
        <div class="contenedor__title">
            <h1><strong>MEGAPAQUETES</strong></h1>
        </div>
        <!-- Contenedor del subtítulo -->
        <div class="contenedor__subtitle">
            <h3>¡Bienvenidos a nuestra pagina de venta de verduras, frutas, <br> 
                tubérculos y hortalizas organicos y sustentables!</h3>
        </div>
        <!-- Contenedor del párrafo con descripción -->
        <div class="contenedor__description">
            <h5>Compra frutas, verduras, tubérculos y hortalizas Online y te las enviamos a cualquier parte de Bucaramanga. Somos un negocio con <br> 
                mas de 1 año de experiencia llevando frutas, verduras, tubérculos y hortalizas frescas a domicilio a los hogares de Bucaramanga, aqui <br> 
                encontraras productos frescos, cultivados con amor y respeto por la naturaleza, ¡Disfruta de la calidad y <br> 
                beneficios saludables que ofrecemos!. Compra hoy y recibe mañana (Lunes a Sabado)
            </h5>
        </div>
        <!-- Boton para seguir mirando la pagina -->
        <div class="boton-continuar">
            <a href="#" class="boton-continuar__link">Continuar</a>
        </div>
        <!-- Contenedor de la sección adentro -->
        <div class="contenedor__secundario">
            <!-- Contenedor del subtítulo y párrafo -->
            <div class="contenedor__texto">
                <div class="contenedor__subtitle--secundario">
                    <h3>Categorías de Alimentos</h3>
                </div>
                <div class="contenedor__description--secundario">
                    <p>¡Bienvenido al mundo de los sabores! En nuestro exclusivo menú, encontrarás una amplia gama de categorías de alimentos que te sorprenderán. Compra frutas, verduras, tubérculos y hortalizas de manera fácil y segura. ¿Qué buscas?</p>
                </div>  
            </div>
            <!-- Contenedor de las imágenes de la sección adentro -->
            <div class="contenedor__imagenes--secundario">
                <div class="imagen-row">
                    <img src="../../../imagenes/imagen frutas.svg" alt="imagen">
                    <img src="../../../imagenes/imagen verduras.svg" alt="imagen">
                </div>
                <div class="image__2">
                    <img src="../../../imagenes/hor.svg" alt="imagen">
                </div>
            </div>            
        </div>
    </section>

    <!-- Sección de contenedor para la segunda sección -->
    <section class="segunda__seccion--contenedor">
        <!-- Contenedor para las imágenes y textos de la sección -->
         <div class="contenedor__imagenes">
            <!-- Primer contenedor de imagen y texto -->
             <div class="contenedor__imagen1">
                <!-- Contenedor de la primera imagen -->
                <div class="imagen1">
                    <!-- Primera imagen de la planta -->
                    <img src="../../../imagenes/planta vector.svg" alt="Imagen de referencia">
                </div>
                <!-- Texto asociado con la primera imagen -->
                <div class="texto__imagen1">
                    <p><strong>Productos de Alta Calidad</strong></p> <!-- Título del texto -->
                    <p>Del campo a tu casa</p> <!-- Descripción del texto -->
                </div>
            </div>
            <!-- Segundo contenedor de imagen y texto -->
            <div class="contenedor__imagen2">
                <!-- Contenedor de la segunda imagen -->
                <div class="imagen2">
                    <!-- Segunda imagen del camión -->
                    <img src="../../../imagenes/camion vector.svg" alt="Imagen de referencia">
                </div>
                <!-- Texto asociado con la segunda imagen -->
                <div class="texto__imagen2">
                    <p><strong>Envios a Domicilio Bucaramanga</strong></p> <!-- Título del texto -->
                    <p>Lunes a Sabado</p> <!-- Descripción del texto -->
                </div>
            </div>
            <!-- Tercer contenedor de imagen y texto -->
            <div class="contenedor__imagen3">
                <!-- Contenedor de la tercera imagen -->
                <div class="imagen3">
                    <!-- Tercera imagen del candado -->
                    <img src="../../../imagenes/candado vector.svg" alt="Imagen de referencia">
                </div>
                <!-- Texto asociado con la tercera imagen -->
                <div class="texto__imagen3">
                    <p><strong>Pagos Seguros</strong></p> <!-- Título del texto -->
                    <p>Contraentrega, Transferencia, Nequi</p> <!-- Descripción del texto -->
                </div>
            </div>
        </div>
    </section>
    
    <!-- Sección de contenedor para la tercera sección -->
    <section class="tercera__seccion--contenedor">
        <!-- Contenedor para las ofertas -->
        <div class="contenedor__ofertas">
            <!-- Contenedor para los párrafos de las ofertas -->
            <div class="contenedor__parrafos">
                <!-- Título de las ofertas -->
                <h1 class="titulo__ofertas"><strong>Compra tus Frutas y Verduras Aquí</strong></h1>
                <!-- Subtítulo de las ofertas -->
                <h3 class="subtitulo__ofertas"><strong>Productos Destacados y Ofretas</strong></h3>
                <!-- Texto descriptivo de las ofertas -->
                <p class="texto__ofertas">Compra frutas, verduras, tubérculos y hortalizas Online, entregamos tu mercado a cualquier parte de
                Bucaramanga.</p>
            </div>
            <!-- Contenedor dentro de la sección de ofertas -->
            <div class="contenedor__dentro--seccion">
                <!-- Texto detallado de las ofertas dentro de la sección -->
                <p class="texto__ofertas--seccion">
                <strong>Promoción de productos de temporada:</strong><br><br> <!-- Título de la promoción -->
                Cada temporada, destacamos productos frescos y de temporada con promociones especiales. Estos productos suelen
                ser cultivados <br> localmente y reflejan la frescura y sabor del momento. <br> <!-- Descripción de la promoción -->
                <br><br>
                Descuento del 20% en tu primera compra: Para dar la bienvenida a nuevos clientes, ofrecemos un descuento del
                20% en su primera compra.
                <br><br> <!-- Descuento por primera compra -->
                Envío gratis en compras superiores a $400.000: Si realizas una compra de $400.000 o más, te ofrecemos el envío
                completamente gratuito. <br>
                Esto te permite disfrutar de nuestros productos sin preocuparte por los costos adicionales de envío. <!-- Promoción de envío gratuito --></p>
            </div>
            <div class="productos__destacados--contenedor">
                <div class="primer__producto">
                    <!-- Contenedor de la imagen del producto -->
                    <div class="contenedor__imagen">
                        <img src="../../../imagenes/aguacate.png" alt="Imagen de producto">
                    </div>
                    <!-- Información del producto -->
                    <div class="informacion__producto">
                        <p class="texto__producto">Frutas</p>
                        <h3 class="titulo__producto"><strong>Aguacate (Unidad)</strong></h3>
                        <p class="precio__producto"><strong>$5.900</strong></p>
            
                        <!-- Contenedor de botones para control de cantidad -->
                        <div class="contenedor__cantidad">
                            
                            <div class="botones__cantidad">
                              <div class="boton__cantidad up" onclick="increaseQuantity()">
                                <img width="64" src="../../../imagenes/--removebg-preview.png" alt="">
                              </div>
                              <div><h3 style="font-size: 50px;">2</h3></div>
                              <div class="boton__cantidad down" onclick="decreaseQuantity()">
                                <img width="64" src="../../../imagenes/+-removebg-preview.png" alt="">
                              </div>
                            </div>
                        </div>
                                            
                        <!-- Botón para añadir producto -->
                        <div class="boton-añadir">
                            <a class="boton__añadir--link" style="text-decoration: none;">Agregar al carrito</a>
                        </div>
                    </div>
                </div>
                <div class="segundo__producto">
                    <!-- Contenedor de la imagen del producto -->
                    <div class="contenedor__imagen">
                        <img src="../../../imagenes/Zanahoria.png" alt="Imagen de producto">
                    </div>
                    <!-- Información del producto -->
                    <div class="informacion__producto">
                        <p class="texto__producto">Verduras</p>
                        <h3 class="titulo__producto"><strong>Zanahoria (500 Gramos)</strong></h3>
                        <p class="precio__producto"><strong>$1.900</strong></p>
            
                        <!-- Contenedor de botones para control de cantidad -->
                        <div class="contenedor__cantidad">
                            <input type="text" id="inputCantidad" class="input__cantidad" value="1" readonly>
                            <div class="botones__cantidad">
                              <button class="boton__cantidad up" onclick="increaseQuantity()">
                                <i class="fas fa-chevron-up"></i> <!-- Icono de flecha hacia arriba -->
                              </button>
                              <button class="boton__cantidad down" onclick="decreaseQuantity()">
                                <i class="fas fa-chevron-down"></i> <!-- Icono de flecha hacia abajo -->
                              </button>
                            </div>
                        </div>                      
                        
                        <!-- Botón para añadir producto -->
                        <div class="boton-añadir">
                            <a class="boton__añadir--link" style="text-decoration: none;">Añadir al carrito</a>
                        </div>
                    </div>
                </div>
                <div class="tercer__producto">
                    <!-- Contenedor de la imagen del producto -->
                    <div class="contenedor__imagen">
                        <img src="../../../imagenes/papa criolla.png" alt="Imagen de producto">
                    </div>
                    <!-- Información del producto -->
                    <div class="informacion__producto">
                        <p class="texto__producto">Tubérculos/Hortalizas</p>
                        <h3 class="titulo__producto"><strong>Papa Criolla (500 Gramos)</strong></h3>
                        <p class="precio__producto"><strong>$3.800</strong></p>
            
                        <!-- Contenedor de botones para control de cantidad -->
                        <div class="contenedor__cantidad">
                            <input type="text" id="inputCantidad" class="input__cantidad" value="1" readonly>
                            <div class="botones__cantidad">
                              <button class="boton__cantidad up" onclick="increaseQuantity()">
                                <i class="fas fa-chevron-up"></i> <!-- Icono de flecha hacia arriba -->
                              </button>
                              <button class="boton__cantidad down" onclick="decreaseQuantity()">
                                <i class="fas fa-chevron-down"></i> <!-- Icono de flecha hacia abajo -->
                              </button>
                            </div>
                        </div>                      
                        
                        <!-- Botón para añadir producto -->
                        <div class="boton-añadir">
                            <a class="boton__añadir--link" style="text-decoration: none;">Añadir al carrito</a>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
    </section>
    
    <!-- Sección de contenedor para la cuarta sección -->
    <section class="cuarta__seccion--contenedor">
        <!-- Contenedor principal de información -->
        <div class="contenedor__informacion">
            <!-- Contenedor de párrafos de información -->
            <div class="informacion__parrafos">
                <!-- Título de la información -->
                <h1 class="titulo__informacion"><strong>Productos de calidad Megapaquetes</strong></h1>
                <!-- Texto descriptivo de la información -->
                <p class="texto__informacion">Cuida a tu familia con lo mejor de las frutas, verduras, tubérculos y hortalizas 100% naturales. Nuestros
                productos son seleccionados <br>
                directamente del campo para llevar lo más fresco y nutritivo a tu mesa. Disfruta de una alimentación <br>
                saludable todos los días.</p>
            </div>
            <!-- Botón para seguir mirando la página -->
            <div class="boton-comprar">
                <!-- Enlace del botón para comprar -->
                <a href="#" class="boton-comprar__link">Comprar ahora</a>
            </div>
        </div>
    </section>
    
    <!-- Sección de contenedor para la quinta sección -->
    <section clas="quinta__seccion--contenedor">
        <!-- Contenedor principal de opiniones -->
        <div class="contenedor__opiniones">
            <!-- Contenedor de párrafos de información sobre opiniones -->
            <div class="informacion__parrafos--opiniones">
                <!-- Título de la sección de opiniones -->
                <h1 class="titulo__opiniones"><strong>Qué Piensan Nuestros Clientes</strong></h1>
            </div>
            <!-- Contenedor de tarjetas de opiniones -->
            <div class="cards__opiniones">
                <!-- Primera tarjeta de opinión -->
                <div class="card1">
                    <!-- Texto de la primera opinión -->
                    <div class="card__texto">
                        <h3>"Estoy encantada con mi experiencia de compra en <br>
                        esta tienda. Los productos orgánicos que ofrecen son <br>
                        de la más alta calidad y me alegra saber que están <br>
                        comprometidos con la sustentabilidad. Además, el <br>
                        proceso de compra fue fácil y recibí mis productos <br>
                        rápidamente. Sin duda seguiré comprando aquí."</h3>
                    </div>
                    <!-- Pie de la primera tarjeta con el nombre del cliente -->
                    <div class="card__pie">
                        <p><strong>María G</strong></p>
                        <p>Cliente de Megapaquetes</p>
                    </div>
                </div>
                <!-- Segunda tarjeta de opinión -->
                <div class="card2">
                    <!-- Texto de la segunda opinión -->
                    <div class="card__texto">
                        <h3>"Desde que descubrí esta tienda virtual de productos<br>
                            orgánicos y sustentables, no he dejado de comprar en <br>
                            ella. Me encanta la variedad de opciones que ofrecen, <br> 
                            Siempre llegan en perfecto estado y la calidad es<br>
                            excepcional. ¡Recomiendo esta tienda a todos los <br>
                            amantes de lo natural!"</h3>
                        </div>
                        <!-- Pie de la segunda tarjeta con el nombre del cliente -->
                        <div class="card__pie">
                            <p><strong>Miguel C.</strong></p>
                            <p>Cliente actual de Megapaquetes</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Sección adicional con información -->
    <section class="additional-info">
        <div class="additional-info__main">
            <div class="additional-info__secondary">
                <!-- Logotipo en la sección adicional -->
                <div class="additional-info__logo">
                    <img src="../../../imagenes/logo.svg" alt="Logo">
                </div>
                <!-- Título y subtítulo en la sección adicional -->
                <div class="additional-info__title">
                    <strong>MEGAPAQUETES</strong>
                    <div class="additional-info__subtitle">FRUTAS . VERDURAS . TUBERCULOS . HORTALIZAS</div>
                </div>
            </div>
            <!-- Imagen principal de la sección adicional -->
            <div class="additional-info__image">
                <img src="../../../imagenes/image frutas.png" alt="Logo">
            </div>
            <!-- Lista de navegación en la sección adicional -->
            <div class="additional-info__nav-list">
                <p class="additional-info__nav-item">Inicio</p>
                <p class="additional-info__nav-item">Megamenu</p>
                <p class="additional-info__nav-item">Ofertas</p>
                <p class="additional-info__nav-item">Sobre nosotros</p>
                <p class="additional-info__nav-item">Carrito de compras</p>
            </div>
            <!-- Contenedor de información de la tienda -->
            <div class="additional-info__store-info">
                <h4 class="additional-info__heading">¡INFORMACION DE LA TIENDA!</h4>
                <img src="../../../imagenes/Group 113.png" alt="Logo" class="additional-info__store-image">
            </div>
            <!-- Contenedor del compromiso de la empresa -->
            <div class="additional-info__commitment">
                <h4 class="additional-info__heading">/// EL COMPROMISO DE MEGAPAQUETES</h4>
                <h5 class="additional-info__text_1">¡Descubre la frescura en línea con <br> Megapaquetes! Ordena tus frutas y <br> verduras favoritas desde la comodidad <br> de tu hogar con nuestra plataforma en <br> línea. ¡Calidad, variedad y conveniencia a <br> solo un clic de distancia!</h5>
            </div>
            <!-- Contenedor de información de contacto -->
            <div class="additional-info__contact">
                <h4 class="additional-info__heading">///INFORMACIÓN DE CONTACTO</h4>
                <p class="additional-info__contact-item"><img src="../../../imagenes/ubicacion.svg" alt="Vector"> Carrera 9 #30-14 — La cumbre</p>
                <p class="additional-info__contact-item"><img src="../../../imagenes/Whatsapp.svg" alt="Vector"> +57 3187800946</p>
                <p class="additional-info__contact-item"><img src="../../../imagenes/correo.svg" alt="Vector"> Megapaquetesalego12@gmail.com</p>
            </div>
            <!-- Contenedor de redes sociales -->
            <div class="additional-info__social">
                <h4 class="additional-info__heading">///SÍGUENOS</h4>
                <p class="additional-info__text"><strong>Puedes encontrarnos en:</strong></p>
                <div class="additional-info__social-icons">
                <img src="../../../imagenes/instagram.svg" alt="Vector" class="additional-info__social-icon">
                <img src="../../../imagenes/twitter.svg" alt="Vector" class="additional-info__social-icon">
                <img src="../../../imagenes/facebook.svg" alt="Vector" class="additional-info__social-icon">
                </div>
            </div>
        </div>
    </section>

    <!-- Pie de página -->
    <footer class="footer">
        <p class="footer__parrafo">@Megapaquetes</p>
    </footer>
</body>
</html>