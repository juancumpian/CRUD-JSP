package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("  <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Listado Socios</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <h1>Listado de Socios</h1>\n");
      out.write("    <div><table>\n");
      out.write("    <tr>\n");
      out.write("                <th>id</th>\n");
      out.write("                <th>modelo</th>\n");
      out.write("                <th>marca</th>\n");
      out.write("                <th>dpi</th>\n");
      out.write("                <th>precio</th>\n");
      out.write("                </tr>\n");
      out.write("                <td>\n");
      out.write("\t");

		Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ratones","root", "");
		Statement s = conexion.createStatement();
		
		ResultSet listado = s.executeQuery ("SELECT * FROM ratones");
		
		while (listado.next()) {
                    out.println("<br>");
			 out.println("<tr><td>");
                out.println(listado.getString("raton_id") + "</td>");
                out.println("<td>" + listado.getString("modelo") + "</td>");
                out.println("<td>" + listado.getString("marca") + "</td>");
                out.println("<td>" + listado.getString("DPI") + "</td>");
                out.println("<td>" + listado.getString("precio") + "</td>");
                out.println("</tr>");
                }
		
		conexion.close();
	
      out.write("\n");
      out.write("                </td>\n");
      out.write("        </table></div>\n");
      out.write("        <br>\n");
      out.write("        <div><input type= \"submit\" value= \"alta\" onclick = \"location='alta.jsp'\"/></div>\n");
      out.write("        <div><input type= \"submit\" value= \"borrado\" onclick = \"location='borrado.jsp'\"/></div>\n");
      out.write("  </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
