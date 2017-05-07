<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.mail.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ratones", "root", "");
                    Statement s = conexion.createStatement();

                    ResultSet listado = s.executeQuery("SELECT * FROM ratones");
                    
                    String contenido = "<head><meta http-equiv= Content-Type content= text/html; charset=UTF-8><link rel=stylesheet href= https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css><link rel= stylesheet href= https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css></head><body>";
                    
                    while (listado.next()) {
                        contenido += "<br>";
                        contenido += "<tr class = info><td>";
                        contenido += listado.getString("raton_id") + "</td>";
                        contenido += "<td>" + listado.getString("modelo") + "</td>";
                        contenido += "<td>" + listado.getString("marca") + "</td>";
                        contenido += "<td>" + listado.getString("DPI") + "</td>";
                        contenido += "<td>" + listado.getString("precio") + "</td>";
                        contenido += "</tr>";
                    }
                    contenido +="</body>";
                    
                    
                    conexion.close();
                    
                    HtmlEmail email = new HtmlEmail();
		email.setSmtpPort(587);
		email.setHostName("Smtp.gmail.com");
		email.setAuthenticator(new DefaultAuthenticator("servicestestcisne@gmail.com", "Jose1234"));
		//email.setSSLOnConnect(true);
			email.getMailSession().getProperties().put("mail.smtps.auth", "true");
			email.getMailSession().getProperties().put("mail.debug", "true");
			email.getMailSession().getProperties().put("mail.smtps.port", "587");
			email.getMailSession().getProperties().put("mail.smtps.socketFactory.port", "587");
			email.getMailSession().getProperties().put("mail.smtps.socketFactory.class",
					"javax.net.ssl.SSLSocketFactory");
			email.getMailSession().getProperties().put("mail.smtps.socketFactory.fallback", "false");
			email.getMailSession().getProperties().put("mail.smtp.starttls.enable", "true");
			email.setSubject("contenido del CRUD");
			email.setFrom("servicetestcisne@gmail.com");
			email.addTo("cumpiandiazjuan@gmail.com");

			email.setHtmlMsg(contenido);
			email.send();

                %>
                
                        <script>document.location = "index.jsp"</script>
    </body>
</html>
