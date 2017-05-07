<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>modificar</title>
    </head>
<body>
    <div class="container" class ="col-sm-8"><form method="get" action="modificar.jsp">
            <h2>Introduzca los datos a modificar:</h2>
                <label for="ID">ID:</label>
                <div class="form-group"><input type="text" name="raton_id" value="<%= Integer.valueOf(request.getParameter("ID")) %>" readonly/></div>
                <label for="modelo">Modelo:</label>
                <div class="form-group"><input type="text" name="modelo" value="<%= request.getParameter("modelo") %>"/></div>
                        <label for="marca">Marca:</label>
                        <div class="form-group"><input type="text" name="marca" value="<%= request.getParameter("marca") %>"/></div>
                        <label for="DPI">DPI</label>
                        <div class="form-group"><input type="text" name="DPI" value="<%= Integer.valueOf(request.getParameter("DPI")) %>"/></div>
                                <label for="precio">Precio:</label>
                                <div class="form-group"><input type="text" name="precio" value="<%= Double.valueOf(request.getParameter("precio")) %>"/></div>
                                <input type="submit" class="btn btn-primary" value="Aceptar"> <a href="menu.jsp" class="btn btn-primary">Volver</a>
                                </form></div>
                        
                             <div class="col-sm-2"></div>
    
       

</body>
</html>     