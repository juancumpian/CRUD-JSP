<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html"pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ratones", "root", "");
            Statement s = conexion.createStatement();
            s.execute("UPDATE ratones SET "
                           + "modelo='" + request.getParameter("modelo")
                           + "', marca='" + request.getParameter("marca")
                           + "', DPI=" + Integer.valueOf(request.getParameter("DPI"))
                           + ", precio=" + Double.valueOf(request.getParameter("precio"))
                           +" WHERE raton_id=" + Integer.valueOf(request.getParameter("raton_id")));
        %>
        <script>document.location = "menu.jsp"</script>
        
    </body>
</html>