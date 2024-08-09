<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%-- Estas directivas importan las clases necesarias para la página JSP:
    - `java.sql.*`: Para trabajar con SQL y JDBC.
    - `java.io.*`: Para operaciones de entrada/salida.
    - `java.util.*`: Para utilidades generales. 
--%>

<%
    // Obtener los parámetros del formulario
    // Recoge los datos enviados por el usuario a través del formulario de inicio de sesión
    String correo = request.getParameter("correo_elec_usuarios");
    String password = request.getParameter("password_usuarios");

    // Establecer la conexión con la base de datos (cambiar las credenciales según tu configuración)
    // Configura la URL de conexión y las credenciales para acceder a la base de datos
    String url = "jdbc:mysql://localhost:3306/proyecto_base_de_datos_darly_hernandez";
    String dbUsername = "root";
    String dbPassword = "";

    try {
        // Cargar el controlador JDBC
        // Carga el driver de MySQL para establecer la conexión con la base de datos
        Class.forName("com.mysql.cj.jdbc.Driver"); // Usa el controlador actualizado

        // Establecer la conexión con la base de datos
        // Crea una conexión a la base de datos utilizando las credenciales definidas
        Connection con = DriverManager.getConnection(url, dbUsername, dbPassword);

        // Consulta SQL para verificar las credenciales del usuario
        // Define la consulta SQL para buscar el usuario en la base de datos con las credenciales proporcionadas
        String query = "SELECT * FROM tb_usuarios WHERE correo_elec_usuarios=? AND password_usuarios=?";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, correo);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            // Obtener el rol del usuario usando el nombre correcto de la columna
            // Extrae el rol del usuario de los resultados de la consulta
            String rol = rs.getString("id_rol_usuarios_fk");

            // Redireccionar a diferentes páginas según el rol del usuario
            // Envía al usuario a la página correspondiente según su rol
            if (rol.equals("2")) {
                response.sendRedirect("../vistas/admin/usuarios/listar.jsp");
            } else if (rol.equals("cliente")) {
                response.sendRedirect("../vistas/cliente/principal/principal.jsp");
            } else {
                // En caso de que el rol no esté definido, redireccionar a una página de error o mostrar un mensaje
                response.sendRedirect("error.jsp");
            }
        } else {
            // Si las credenciales no son válidas, muestra un mensaje de error
            // Informa al usuario que las credenciales proporcionadas son incorrectas
            out.println("<p style='color:red;'>Credenciales inválidas</p>");
        }

        // Cerrar la conexión con la base de datos
        // Cierra la conexión a la base de datos para liberar recursos
        con.close();
    } catch (Exception e) {
        // Manejo de errores
        // Muestra un mensaje de error si ocurre una excepción al conectar con la base de datos
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
    }
%>
