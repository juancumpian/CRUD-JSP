<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        
         <div class="col-sm-2"></div>
       
        <div class="container" class ="col-sm-8"><form method="get" action="grabaSocio.jsp">
                <h2>Introduzca los datos del nuevo raton:</h2>
                <label for="ID" >ID:</label>
                <div class="form-group"><input type="text" name="raton_id" value="ponga numeros enteros"/></div>
                <label for="modelo">Modelo:</label>
                <div class="form-group"><input type="text" name="modelo"/></div>
                        <label for="marca">Marca:</label>
                        <div class="form-group"><input type="text" name="marca"/></div>
                        <label for="DPI">DPI</label>
                        <div class="form-group"><input type="text" name="DPI" value="ponga numeros enteros"/></div>
                                <label for="precio">Precio:</label>
                                <div class="form-group"><input type="text" name="precio" value="ponga numero"/></div>
                                <input type="submit" class="btn btn-primary" value="Aceptar"> <a href="index.jsp" class="btn btn-primary">Volver</a>
                                </form></div>
                        
                             <div class="col-sm-2"></div>
                            </body>
                            </html>