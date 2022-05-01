package org.apache.jsp.page;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import include.DBConnection;

public final class edufairs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/page/../pageparts/footer.jsp");
  }

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Event Info</title>\r\n");
      out.write("         <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/style.css\" />\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div id=\"container\">\r\n");
      out.write("              <div id=\"header\"><br>\r\n");
      out.write("                <div id=\"header_wrapper\"><br>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("                          <li><b><a  href=\"../index.jsp\">HOME</a></b></li>\r\n");
      out.write("                            <li><b><a  href=\"../register.jsp\">REGISTER</a></b></li>\r\n");
      out.write("                            <li><b><a  href=\"../login.jsp\">LOGIN</a></b></li>\r\n");
      out.write("                            <li><b><a  href=\"review.jsp\">REVIEWS</a></b></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("            </div>\r\n");
      out.write("                <div id=\"bar\">\r\n");
      out.write("                      <div id=\"bar_wrapper\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li>VIEW THE EVENTS:</li>\r\n");
      out.write("                        <li><a class =\"selected\" href=\"socialevents.jsp\"> Social Events</a></li>\r\n");
      out.write("                        <li><a class =\"selected\" href=\"techevents.jsp\">Tech Events</a></li>\r\n");
      out.write("                        <li><a class =\"selected\" href=\"edufairs.jsp\">Educational Fairs</a></li>\r\n");
      out.write("                        <li><a class =\"selected\" href=\"music.jsp\">Music and Concerts</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                      </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            <div id=\"edu\">\r\n");
      out.write("                  <blockquote><b>EDUCATIONAL EVENTS</b></blockquote>\r\n");
      out.write("                </div>\r\n");
      out.write("            <div id=\"content6\">\r\n");
      out.write("                 <div id=\"content6a\">\r\n");
      out.write("                     <center><h2 style=\"color: brown; font-family: initial; font-size: 20px;\">All upcoming Educational fairs.</h2></center><br>\r\n");
      out.write("                              <table>\r\n");
      out.write("            <tr ><td colspan=\"2\" ></td></tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("         <th>S.N</th>\r\n");
      out.write("            <th>Event</th>\r\n");
      out.write("                  <th> Date</th>\r\n");
      out.write("                      <th> Venue</th>\r\n");
      out.write("                          <th> Organizer</th>\r\n");
      out.write("                  </tr>      \r\n");
      out.write("                                   ");
                     
                 DBConnection db = new DBConnection();                        
           try{
            String sql1="Select * from edufair";
            db.st.executeQuery(sql1);
          //  out.print(sql);
            db.rs=db.st.executeQuery(sql1);
    for(int i=1;db.rs.next();i++)
    {
    out.print("<tr><td>" + i + "</td><td>" + db.rs.getString(2) + "</td><td>" + db.rs.getString(3) + "</td><td>" + db.rs.getString(4) + "</td><td>" + db.rs.getString(5));
    }
    
   }catch(Exception e){out.print(e);}
           
      out.write("</table>\r\n");
      out.write("                </div>                \r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("                 <div id=\"footer\">\r\n");
      out.write("                ");
      out.write("      <div>\r\n");
      out.write("                    <blockquote>Contact Us</blockquote>\r\n");
      out.write("                    <blockquote>Questions? We've got answers. Try us</blockquote>\r\n");
      out.write("                    <blockquote><b><button><a href=\"\">Email Us</a></button></b></blockquote>\r\n");
      out.write("\t\t\t</div>");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("              </body>\r\n");
      out.write("</html>\r\n");
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
