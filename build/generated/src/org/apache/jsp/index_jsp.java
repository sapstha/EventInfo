package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import include.DBConnection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/pageparts/footer.jsp");
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
      out.write("    \n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Event Info</title>\n");
      out.write("\t\t  <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/style.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                    \n");
      out.write("        <div id=\"container\">\n");
      out.write("                 <div id=\"header\"><br>\n");
      out.write("                <div id=\"header_wrapper\"><br>\n");
      out.write("\t\t\t<ul>\n");
      out.write("                          <li><b><a  href=\"index.jsp\">HOME</a></b></li>\n");
      out.write("                            <li><b><a  href=\"page/org.jsp\">ORGANIZATION</a></b></li>\n");
      out.write("                            <li><b><a  href=\"register.jsp\">REGISTER</a></b></li>\n");
      out.write("                            <li><b><a  href=\"login.jsp\">LOGIN</a></b></li>\n");
      out.write("                            <li><b><a  href=\"page/review.jsp\">REVIEWS</a></b></li>\n");
      out.write("                    </ul>\n");
      out.write("                        </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"content\">\n");
      out.write("                <div id=\"bar\">\n");
      out.write("                      <div id=\"bar_wrapper\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li>VIEW THE EVENTS:</li>\n");
      out.write("                       <li><a class =\"selected\" href=\"page/socialevents.jsp\"> Social Events</a></li>\n");
      out.write("                        <li><a class =\"selected\" href=\"page/techevents.jsp\">Tech Events</a></li>\n");
      out.write("                        <li><a class =\"selected\" href=\"page/edufairs.jsp\">Educational Fairs</a></li>\n");
      out.write("                        <li><a class =\"selected\" href=\"page/music.jsp\">Music and Concerts</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                      </div>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"main\">\n");
      out.write("\t\t\t\t<div id=\"main1\">\n");
      out.write("                                   \n");
      out.write("                                    <center>  <h2><i>Welcome to EVENT INFO</i></h2> </center>\n");
      out.write("                                  <p class=\"justifier\">Don't you sometimes get upset when you miss out some of the important events that you were\n");
      out.write("\t\t\t\t\twilling to attend just because you didn't know the exact venue and change in time of that particular events?</p>\n");
      out.write("\t\t\t    <p class=\"justifier\">DON'T WORRY! Now you can always get the notifications of latest updated events. Never miss your events!.</p>\n");
      out.write("                                      \n");
      out.write("\t\t\t\t\t\n");
      out.write("                </div>\n");
      out.write("\t\t\t\t<div id=\"main2\">\n");
      out.write("                                                <table>\n");
      out.write("            <tr ><td colspan=\"5\" ></td></tr>\n");
      out.write("            <tr>\n");
      out.write("         <th>S.N</th>\n");
      out.write("            <th>Event</th>\n");
      out.write("                  <th> Date</th>\n");
      out.write("                      <th> Venue</th>\n");
      out.write("                          <th> Organizer</th>\n");
      out.write("                  </tr>      \n");
      out.write("                                   ");
                     
                 DBConnection db = new DBConnection();                        
           try{
            String sql1="Select * from home";
            db.st.executeQuery(sql1);
          //  out.print(sql);
            db.rs=db.st.executeQuery(sql1);
    for(int i=1;db.rs.next();i++)
    {
    out.print("<tr><td>" + i + "</td><td>" + db.rs.getString(2) + "</td><td>" + db.rs.getString(3) + "</td><td>" + db.rs.getString(4) + "</td><td>" + db.rs.getString(5));
    }
    
   }catch(Exception e){out.print(e);}
           
      out.write("</table>\n");
      out.write("                </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("            </div>\n");
      out.write("          <div id=\"footer\">\n");
      out.write("                ");
      out.write("      <div>\r\n");
      out.write("                    <blockquote>Contact Us</blockquote>\r\n");
      out.write("                    <blockquote>Questions? We've got answers. Try us</blockquote>\r\n");
      out.write("                    <blockquote><b><button><a href=\"\">Email Us</a></button></b></blockquote>\r\n");
      out.write("\t\t\t</div>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
