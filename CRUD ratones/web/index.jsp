<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado Socios</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <div class="col-sm-1"></div>
    <div class="col-sm-10">
        <table class="table table-responsive">
            <tr class="success">
                <th>id</th>
                <th>modelo</th>
                <th>marca</th>
                <th>dpi</th>
                <th>precio</th>
            </tr>
           
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ratones", "root", "");
                    Statement s = conexion.createStatement();

                    ResultSet listado = s.executeQuery("SELECT * FROM ratones");

                    while (listado.next()) {
                        out.println("<br>");
                        out.println("<tr class= info><td>");
                        out.println(listado.getString("raton_id") + "</td>");
                        out.println("<td>" + listado.getString("modelo") + "</td>");
                        out.println("<td>" + listado.getString("marca") + "</td>");
                        out.println("<td>" + listado.getString("DPI") + "</td>");
                        out.println("<td>" + listado.getString("precio") + "</td>");
                        out.println("</tr>");
                    }

                    conexion.close();
                %>
            
        </table>
        <br>

        <a href="alta.jsp" class="btn btn-primary">Dar De Alta</a>
        <a href="menu.jsp" class="btn btn-primary">Modificar o Borrar</a>
        <a href="email.jsp" class="btn btn-primary">enviar email</a>
    </div>
    <div class="col-sm-1"></div>
</body>
</html>