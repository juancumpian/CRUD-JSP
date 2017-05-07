
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>email</title>
    </head>
    <body>
        
        <div class="container" class ="col-sm-8" style="margin-top: 30px">
            <h2>Dime el email a donde vas enviar la tabla</h2>
        <form method="get" action="EnviarEmail.jsp">
            
            <label for="Email">Email:</label>
                <div class="form-group"><input type="text" name="email" /></div>
                <input type="submit" class="btn btn-primary" value="Aceptar" style="margin: 3px">
        </form>
             <a href="index.jsp" class="btn btn-primary" style="margin: 3px">Página principal</a>
        </div>
        
        
        
        
       
       
    </body>
</html>
