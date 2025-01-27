<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>¡LISTAR PRODUCTOS!</title>
    <!-- Enlace al archivo CSS para estilos -->
    <link rel="stylesheet" href="listar.css">
    <!-- Favicon para el navegador -->
    <link rel="icon" type="image/svg" href="../web/IMAGENES/logo.svg">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
</head>
<body>

    <!-- Barra de navegación -->
    <nav class="negrita navbar navbar-expand-lg p-4">
        <div class="container-fluid d-flex">
            <!-- Logo -->
            <img src="../../../imagenes/logo.svg" alt="logo">
            <div class="px-4">
                <a class="nav-link active" href="../../index.html">MEGAPAQUETES</a>
                <div class="esconder">
                    <!-- Contenido escondido -->
                </div>
            </div>
            <!-- Botón para mostrar el menú en pantallas pequeñas -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Contenedor del menú desplegable -->
            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex gap-5 justify-content-center align-items-center">
                    <!-- Elementos del menú -->
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../../index.html">Inicio</a>
                      </li>
                      <!-- Elemento de menú con dropdown -->
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Megamenu
                        </a>
                        <!-- Menú desplegable -->
                        <ul class="dropdown-menu bg-success text-light">
                          <li class="px-2">MEGAPAQUETES</li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item text-light" href="../productos/verduras_productos.html">Verduras</a></li>
                          <li><a class="dropdown-item text-light" href="../productos/frutas_productos.html">Frutas</a></li>
                          <li><a class="dropdown-item text-light" href="../productos/tubérculos_hortalizas_productos.html">Tubérculos/Hortalizas</a></li>
                          <div class="arrow"></div>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link active" href="#">Ofertas</a>
                      </li>
                      <!-- Elemento de menú con dropdown -->
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Sobre Nosotros
                        </a>
                        <!-- Menú desplegable -->
                        <ul class="dropdown-menu bg-success text-light">
                          <li class="px-2">MEGAPAQUETES</li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item text-light" href="../sobre nosotros/sobre nosotros.html">Sobre Nosotros</a></li>
                          <li><a class="dropdown-item text-light" href="../sobre nosotros/Contacto.html">Contacto</a></li>
                          <li><a class="dropdown-item text-light" href="../sobre nosotros/Politicas.html">Politicas(Terminos y Condiciones)</a></li>
                          <div class="arrow"></div>
                        </ul>
                      </li>
                    <div class="d-flex gap-5 botones">
                        <a href="#" class="desplegable d-flex align-items-center justify-content-center gap-2 nav-link" type="submit">
                            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="dark" class="bi bi-person-circle" viewBox="0 0 16 16">
                                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
                            </svg>
                            <h5 id="loggedInUserName"></h5>
                        </a>
                    </div>
                </ul>
            </div>    
        </div>  
    </nav>

    <div class="menu_perfil">
        <div class="contenido">
            <a href="listar.html">
                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="dark" class="bi bi-x-lg img-salir" viewBox="0 0 16 16">
                    <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z"/>
                </svg>
            </a>
            <div class="opciones">
                <a href="" class="nav-link">
                    <h3><strong>Mega</strong>paquetes</h3>
                </a> 
                <a class="nav-link" href="../productos actualizaciones/listar.html">Gestion de productos</a>
                <a class="nav-link" href="#">Gestion de usuario</a>
                <a class="nav-link" href="#">Gestion de pedidos</a>

                <a class="nav-link" href="../administradores/perfil_administrador.html">Perfil</a>
                <a class="nav-link" href="../../index.html">Cerrar Sesion</a>
            </div>
        </div>
    </div>


    <!-- Contenedor principal con título y línea decorativa -->
    <div class="contenedor__principal">
        <p class="titulo__principal">Gestión de Usuarios</p>
        <div class="contenedor__linea"></div>
    </div>
    
    <!-- Contenedor para la tabla de productos -->
    <div class="container mt-5 text-center">
        <a href="../productos actualizaciones/crear.html" class="btn btn-success w-100 mb-2">Crear Producto</a>
        <!-- Tabla responsive para listar productos -->
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead class="thead-light">
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>Fecha registro</th>
                        <th>Descripcion</th>
                        <th>Rol</th>
                        <th>Estado cuenta</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                <% 
                try {
                    // Establece la conexión con la base de datos
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_base_de_datos_darly_hernandez", "root", "");
                    Statement stmt = con.createStatement();
                    
                    // Ejecuta la consulta SQL para obtener los usuarios
                    String query = "SELECT * FROM tb_usuarios";
                    ResultSet rs = stmt.executeQuery(query);
                    
                    // Itera sobre los resultados y muestra cada usuario en una fila de la tabla
                    while(rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("tb_usuarios.nombre_usuarios") %></td>
                    <td><%= rs.getString("tb_usuarios.apellido_usuarios") %></td>
                    <td><%= rs.getString("tb_usuarios.dirrec_usuarios") %></td>
                    <td><%= rs.getString("tb_usuarios.telefono_usuarios") %></td>
                    <td><%= rs.getString("tb_usuarios.fecha_registro_usuarios") %></td>
                    <td><%= rs.getString("tb_usuarios.descripcion_usuarios") %></td>
                    <td><%= rs.getString("tb_usuarios.rol_usuarios") %></td>
                    <td><%= rs.getString("tb_usuarios.estado_cuenta_usuarios") %></td>
                    <td>
                        <a href="FormularioActualizarProyecto.jsp?id=<%= rs.getInt("id_usuario") %>" class="btn btn-primary">Editar</a>
                        <a href="EliminarProyecto.jsp?id=<%= rs.getInt("id_usuario") %>" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
                <% 
                    }
                    con.close();
                } catch(Exception e) {
                    out.println("Error: " + e.getMessage());
                }
                %>
            </tbody>
            </table>
        </div>
    </div>

    <!-- JavaScript de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <script src="listar.js"></script>
</body>
</html>