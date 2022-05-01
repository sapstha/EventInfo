<%-- 
    Document   : logout
    Created on : May 22, 2017, 7:25:47 AM
    Author     : DIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


        <%
      session.invalidate();
    pageContext.forward("adminlogin.jsp");
     out.print("<script>window.location.assign(\""+request.getContextPath()+"/adminlogin.jsp \");</script>");
    %>    
