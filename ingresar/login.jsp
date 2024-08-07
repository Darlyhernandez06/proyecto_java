<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    // Obtener los parámetros del formulario
    String correo = request.getParameter("correo_elec_usuarios");
    String password = request.getParameter("contraseña_usuarios");

    // Establecer la conexión con la base de datos (cambiar las credenciales según tu configuración)
    String url = "jdbc:mysql://localhost:3306/proyecto_base_de_datos_darly_hernandez";
    String dbUsername = "root";
    String dbPassword = "";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, dbUsername, dbPassword);

        // Consulta SQL para verificar las credenciales del usuario
        String query = "SELECT * FROM tb_usuarios WHERE correo_elec_usuarios=? AND contraseña_usuarios=?";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, correo );
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            // Obtener el rol del usuario
            String rol = rs.getString("rol");
            
            // Redireccionar a diferentes páginas según el rol del usuario
            if (rol.equals("admin")) {
                response.sendRedirect("../vistas/admin/usuarios/listar.jsp");
            } else if (rol.equals("cliente")) {
                response.sendRedirect("../vistas/cliente/principal/principal.jsp");
            } else {
                // En caso de que el rol no esté definido, redireccionar a una página de error o mostrar un mensaje
                response.sendRedirect("error.jsp");
            }
        } else {
            // Si las credenciales no son inválidas, muestra un mensaje de error y redirecciona al formulario de inicio de sesión nuevamente
            out.println("<p style='color:red;'>Credenciales inválidas</p>");

            //response.sendRedirect("ingresar.html");
        }

        // Cerrar la conexión con la base de datos
        con.close();
    } catch (Exception e) {
        out.println(e);
    }
%>
