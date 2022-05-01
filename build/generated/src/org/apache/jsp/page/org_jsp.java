package org.apache.jsp.page;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import include.DBConnection;

public final class org_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Event Info</title>\n");
      out.write("         <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/style.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"container\">\n");
      out.write("              <div id=\"header\"><br>\n");
      out.write("                <div id=\"header_wrapper\"><br>\n");
      out.write("\t\t\t<ul>\n");
      out.write("                          <li><b><a  href=\"../index.jsp\">HOME</a></b></li>\n");
      out.write("                           <li><b><a  href=\"org.jsp\">ORGANIZATION</a></b></li>\n");
      out.write("                            <li><b><a  href=\"../register.jsp\">REGISTER</a></b></li>\n");
      out.write("                            \n");
      out.write("                            <li><b><a  href=\"../login.jsp\">LOGIN</a></b></li>\n");
      out.write("                            <li><b><a  href=\"review.jsp\">REVIEWS</a></b></li>\n");
      out.write("                    </ul>\n");
      out.write("                        </div>\n");
      out.write("            </div>\n");
      out.write("                <div id=\"bar\">\n");
      out.write("                      <div id=\"bar_wrapper\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li>VIEW THE EVENTS:</li>\n");
      out.write("                        <li><a class =\"selected\" href=\"socialevents.jsp\"> Social Events</a></li>\n");
      out.write("                        <li><a class =\"selected\" href=\"techevents.jsp\">Tech Events</a></li>\n");
      out.write("                        <li><a class =\"selected\" href=\"edufairs.jsp\">Educational Fairs</a></li>\n");
      out.write("                        <li><a class =\"selected\" href=\"music.jsp\">Music and Concerts</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                      </div>\n");
      out.write("                </div>\n");
      out.write("            <div id=\"contentorg\">  \n");
      out.write("                <blockquote><center><b>ORGANIZATIONS INVOLVED</b></center></blockquote>\n");
      out.write("                 <p class=\"justified\"><a  href=\"http://micnepal.org/\" target=\"_blank\">1.micnepal.org</a></p>\n");
      out.write("        <img src=\"../assets/img/mic.png \" alt=\"Smiley face\" height=\"100\" width=\"150\">\n");
      out.write("                     <p class=\"justified\"><a href=\"http://e-leoclubhouse.org/sites/kathmandusamakhushi/\">2.leoclubhouse.org</a></p>\n");
      out.write("                 <img src=\"../assets/img/lion.png \" alt=\"Smiley face\" height=\"100\" width=\"150\">\n");
      out.write("                   <div id=\"contentorg1\">  \n");
      out.write("                     <p class=\"justified\"><a href=\"https://www.lftechnology.com/\">3.lftechnology.com</a></p>\n");
      out.write("                      <img src=\"../assets/img/leapfrog.jpg \" alt=\"Smiley face\" height=\"100\" width=\"150\">\n");
      out.write("                   </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div id=\"footer\">\n");
      out.write("                ");
      out.write("      <div>\r\n");
      out.write("                    <blockquote>Contact Us</blockquote>\r\n");
      out.write("                    <blockquote>Questions? We've got answers. Try us</blockquote>\r\n");
      out.write("                    <blockquote><b><button><a href=\"\">Email Us</a></button></b></blockquote>\r\n");
      out.write("\t\t\t</div>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("              </body>\n");
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
