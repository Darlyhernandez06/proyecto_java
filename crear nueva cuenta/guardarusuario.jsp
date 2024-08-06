<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>

<%
    // Obtener los parámetros del formulario
    String nombre = request.getParameter("nombre_usuarios");
    String apellidos = request.getParameter("apellido_usuarios");
    String email = request.getParameter("correo_elec_usuarios");
    String password = request.getParameter("contraseña_usuarios");
    String direccion = request.getParameter("dirrec_usuarios");
    String telefono = request.getParameter("telefono_usuarios");
    String descripcion = request.getParameter("descripcion_usuarios");
    String confirmar_contrasena = request.getParameter("contraseña_confirmacion");
    
    // Definir las credenciales de la base de datos
    String url = "jdbc:mysql://localhost:3306/proyecto_base_de_datos_darly_hernandez";
    String user = "root";
    String dbpassword = ""; // Cambia esto si tienes una contraseña para la base de datos
    
    // Establecer la conexión con la base de datos
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, user, dbpassword);
        
        // Preparar la consulta SQL para insertar el nuevo usuario
        String query = "INSERT INTO tb_usuarios (nombre_usuarios, apellido_usuarios, correo_elec_usuarios, contraseña_usuarios, dirrec_usuarios, telefono_usuarios, descripcion_usuarios, contraseña_confirmacion) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, nombre);
        pstmt.setString(2, apellidos);
        pstmt.setString(3, email);
        pstmt.setString(4, password); 
        pstmt.setString(5, direccion); 
        pstmt.setString(6, telefono); 
        pstmt.setString(7, descripcion); 
        pstmt.setString(8, confirmar_contrasena); 

        // Ejecutar la consulta
        int rows = pstmt.executeUpdate();
        
        // Verificar si se agregó el usuario correctamente
        if (rows > 0) {
            response.sendRedirect("../ingresar/ingresar.html");
        } else {
            response.sendRedirect("register.jsp");
        }
        
        // Cerrar la conexión
        con.close();
    } catch (Exception e) {
        out.println("<h2>Error al conectar con la base de datos: " + e.getMessage() + "</h2>");
    }
%>
