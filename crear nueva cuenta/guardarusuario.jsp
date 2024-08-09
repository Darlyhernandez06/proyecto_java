<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>

<%-- Estas directivas importan las clases necesarias para la página JSP:
    - `java.sql.*`: Para trabajar con SQL y JDBC.
    - `java.io.*`, `java.util.*`, `javax.servlet.*`: Para operaciones de entrada/salida, utilidades generales y servlet. 
--%>

<%
    // Obtener los parámetros del formulario
    // Se recogen los datos enviados por el usuario a través del formulario
    String nombre = request.getParameter("nombre_usuarios");
    String apellidos = request.getParameter("apellido_usuarios");
    String email = request.getParameter("correo_elec_usuarios");
    String password = request.getParameter("password_usuarios");
    String confirmacion = request.getParameter("password_confirmacion");
    String direccion = request.getParameter("dirrec_usuarios");
    String telefono = request.getParameter("telefono_usuarios");
    String descripcion = request.getParameter("descripcion_usuarios");
    String rol = request.getParameter("id_rol_usuarios_fk");

    // Definir las credenciales de la base de datos
    // Configura la URL de conexión y las credenciales de acceso a la base de datos
    String url = "jdbc:mysql://localhost:3306/proyecto_base_de_datos_darly_hernandez";
    String user = "root";
    String dbpassword = ""; // Cambia esto si tienes una contraseña para la base de datos

    // Verificar que las contraseñas coincidan
    // Se asegura de que la contraseña y la confirmación sean iguales
    if (password.equals(confirmacion)) {
        try {
            // Cargar el controlador JDBC
            // Carga el driver de MySQL para establecer la conexión con la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer la conexión con la base de datos
            // Crea una conexión a la base de datos utilizando las credenciales definidas
            Connection con = DriverManager.getConnection(url, user, dbpassword);

            // Preparar la consulta SQL para insertar el nuevo usuario
            // Define la consulta SQL para insertar los datos del usuario en la base de datos
            String query = "INSERT INTO tb_usuarios (nombre_usuarios, apellido_usuarios, correo_elec_usuarios, password_usuarios, dirrec_usuarios, telefono_usuarios, descripcion_usuarios, password_confirmacion, confirmado, id_rol_usuarios_fk) VALUES (?, ?, ?, ?, ?, ?, ?, ?, 1, 1)";
            PreparedStatement pstmt = con.prepareStatement(query);

            // Establecer los valores de la consulta
            pstmt.setString(1, nombre);
            pstmt.setString(2, apellidos);
            pstmt.setString(3, email);
            pstmt.setString(4, password); 
            pstmt.setString(5, direccion); 
            pstmt.setString(6, telefono); 
            pstmt.setString(7, descripcion); 
            pstmt.setString(8, confirmacion);
            pstmt.setString(9, rol); 

            // Ejecutar la consulta
            // Ejecuta la consulta para insertar los datos en la base de datos
            int rows = pstmt.executeUpdate();

            // Verificar si se agregó el usuario correctamente
            // Redirige a la página de inicio de sesión si la inserción fue exitosa, 
            // o vuelve a la página de registro si no fue exitosa
            if (rows > 0) {
                response.sendRedirect("../ingresar/ingresar.html");
            } else {
                response.sendRedirect("register.jsp");
            }

            // Cerrar la conexión
            // Cierra la conexión a la base de datos para liberar recursos
            con.close();
        } catch (Exception e) {
            // Manejo de errores
            // Muestra un mensaje de error si ocurre una excepción al conectar con la base de datos
            out.println("<h2>Error al conectar con la base de datos: " + e.getMessage() + "</h2>");
        }
    } else {
        // Manejo de contraseñas no coincidentes
        // Muestra un mensaje de error y redirige a la página de registro si las contraseñas no coinciden
        out.println("<h2>Las contraseñas no coinciden. Por favor, inténtelo de nuevo.</h2>");
        response.sendRedirect("register.jsp");
    }
%>
