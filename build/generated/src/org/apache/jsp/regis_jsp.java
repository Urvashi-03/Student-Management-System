package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class regis_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/menudemo1.jsp");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <script type=\"text/javascript\" src=\"valid.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"abc.css\"/>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    ");
      out.write("<div id=\"mymenu\">\n");
      out.write("<ul>\n");
      out.write("<li> Home  </li>\n");
      out.write("<li><a href=\"login.jsp\">LogIn</a> </li>\n");
      out.write("<li><a href=\"regis.jsp\">Registration</a> </li>\n");
      out.write("<li> About </li>\n");
      out.write("<li> Contact </li>\n");
      out.write("</ul>\n");
      out.write("</div>");
      out.write("\n");
      out.write("    \n");
      out.write("<div >\n");
      out.write("<form action=\"regis1.jsp\" name=\"form1\">\n");
      out.write("<center>\n");
      out.write("<table cellpadding=\"12\">\n");
      out.write("<caption><b>Registration Page</caption>\n");
      out.write("<tr>\n");
      out.write("<td>Enter Name<b></td>\n");
      out.write("<td><input type=\"text\" name=\"un\" id=\"t1\" placeholder=\"Enter Name...\">\n");
      out.write("<br>\n");
      out.write("    <font id=\"s1\"></font>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Enter Pass<b></td>\n");
      out.write("<td><input type=\"password\" name=\"up\" id=\"t2\" placeholder=\"Enter Pass...\">\n");
      out.write("<br>\n");
      out.write("    <font id=\"s2\"></font>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Enter Contact<b></td>\n");
      out.write("<td><input type=\"text\" name=\"ucn\" id=\"t1\" placeholder=\"Enter Contact...\" ></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<th colspan=\"2\"><input type=\"button\" class=\"B\" value=\"Registration\" onclick=\"valid()\"></th>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("</center>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
