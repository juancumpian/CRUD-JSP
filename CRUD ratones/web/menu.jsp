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
    <title>menu</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ratones", "root", "");
            Statement s = conexion.createStatement();

            ResultSet listado = s.executeQuery("SELECT * FROM ratones");
        %>
        <div class="col-sm-1"></div>
        <div class="col-sm-10">
        <table class="table table-responsive">
            <tr class= "success" >
                <th>id</th>
                <th>modelo</th>
                <th>marca</th>
                <th>dpi</th>
                <th>precio</th>
                <th></th>
                <th></th>
                </tr>
                <%
                while (listado.next()) {
                out.println("<tr class= info><td>");
                out.println(listado.getString("raton_id") + "</td>");
                out.println("<td>" + listado.getString("modelo") + "</td>");
                out.println("<td>" + listado.getString("marca") + "</td>");
                out.println("<td>" + listado.getString("DPI") + "</td>");
                out.println("<td>" + listado.getString("precio") + "</td>");%>
                
                <td>
                    <form method="get"action="borrado.jsp" style="margin: 3px">
                        <input type="hidden" name="raton_id" class="btn btn-Success" value="<%=listado.getString("raton_id")%>"/>
                        <input type="submit" class="btn btn-Success" style="background-color:red; color:white" value="borrar">
                       
                    </form>
                </td>
                <td>
                    
                         <form method="get" action="modificarForm.jsp">
                                <input type="hidden" name="ID" value="<%=listado.getString("raton_id") %>">
                                <input type="hidden" name="modelo" value="<%=listado.getString("modelo") %>">
                                <input type="hidden" name="marca" value="<%=listado.getString("marca") %>">
                                <input type="hidden" name="DPI" value="<%=listado.getString("DPI") %>">
                                <input type="hidden" name="precio" value="<%=listado.getString("precio") %>">
                                <input type="submit"  class="btn btn-Success" style="background-color:orange; color:white" value="modificar">
                            </form>
                </td>
            </tr>
            <%
                }
                conexion.close();%>
        </table>
      
        
        <a href="index.jsp" class="btn btn-primary">Página principal</a>
          </div>
        <div class="col-sm-1"></div>
    </body>
</html>