<%@page import="java.sql.Statement"%>
    <%@page import="java.sql.ResultSet"%>
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
                        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ratones","root","");
                        Statement s = conexion.createStatement();
                        request.setCharacterEncoding("UTF-8");
                        String insercion="INSERT INTO ratones VALUES ("
                                          +Integer.valueOf(request.getParameter("raton_id"))
                                          +", '"+request.getParameter("modelo")
                                          +"', '"+request.getParameter("marca")
                                          +"', "+Integer.valueOf(request.getParameter("DPI"))
                                          +", "+Double.valueOf(request.getParameter("precio"))   
                                          +")";
                        s.execute(insercion);
                        conexion.close();
                    %>
                    <h1>Socio dado de alta.</h1>
                    <br/>
                    <a href="index.jsp" class="btn btn-primary">Página principal</a>
                </body>
            </html>