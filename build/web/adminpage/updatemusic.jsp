<%@page import="include.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DBConnection db=new DBConnection();
   
try{
if(request.getParameter("mode").equals("d")){
  int selectedId=Integer.parseInt(request.getParameter("id"));
  String sql="delete from music where id="+selectedId+"";
 //out.print(selectedId);
  db.st.executeUpdate(sql);
  out.print("<script>alert('Data Deleted');window.location.assign('?');</script>");
}}catch(Exception e){e.getMessage();}

%>
<html>
    <head>
        <title>Event Info</title>
        <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    </head>
    <body>
        <div id="container">
            <div id="header"><br>
                <div id="header_wrapper"><br>
                    <ul>
                        <li><b><a  href="../adminindex.jsp">HOME</a></b></li>
                        <li><b><a  href="userdetails.jsp">USER DETAILS</a></b></li>
                        <li><b><a  href="../adminlogout.jsp">LOGOUT</a></b></li>
                        <li><b><a  href="adminreview.jsp">VIEW REVIEWS</a></b></li>
                    </ul>
                </div>
            </div>
            <div id="bar">
                <div id="bar_wrapper">
                    <ul>
                       <li>POST EVENTS:</li>
                        <li><a class ="selected" href="adminsocial.jsp"> Social Events</a></li>
                        <li><a class ="selected" href="admintech.jsp">Tech Events</a></li>
                        <li><a class ="selected" href="adminedu.jsp">Educational Fairs</a></li>
                        <li><a class ="selected" href="adminmusic.jsp">Music and Concerts</a></li>
                        <li>UPDATE EVENTS:</li>
                        <li><a class ="selected" href="updatesocial.jsp"> Social Events</a></li>
                        <li><a class ="selected" href="updatetech.jsp">Tech Events</a></li>
                        <li><a class ="selected" href="updateedu.jsp">Educational Fairs</a></li>
                        <li><a class ="selected" href="updatemusic.jsp">Music and Concerts</a></li>
                    </ul>
                </div>
            </div>
            <div id="contentevent">
                <div id="contentabc1">
                    <center><h1>Music Event Details</h1></center>
                    <table border="1">
                        <tr ><td colspan="4"><a href="editmusic.jsp">Post Events Here</a></td></tr>
                        <tr>
                            <th>S.N</th>
                            <th>Event description</th>
                            <th>Date</th>
                            <th>Venue</th>
                            <th>Organizer</th>
                        </tr>
                        <%
                            try {
                                String sql1 = "Select * from music";
                                db.st.executeQuery(sql1);
                                //  out.print(sql);
                                db.rs = db.st.executeQuery(sql1);
                                for (int i = 1; db.rs.next(); i++) {
                                    out.print("<tr><td>" + i + "</td><td>" + db.rs.getString(2) + "</td><td>" + db.rs.getString(3) + "</td><td>" + db.rs.getString(4) + "</td><td>" + db.rs.getString(5) + "</td>"
                                            + "</td><td> <a href='editmusic.jsp?Action=Edit&"
                                            + "id=" + db.rs.getString(1) + "'>Edit</a> | <a href='updatemusic.jsp?mode=d&id=" + db.rs.getString(1) + "' onclick='return (confirm(\"Do you really want to delete ??\"))'>Delete</a></td></tr>");
                                }
                            } catch (Exception e) {
                                out.print(e);
                            }
                        %></table>
                </div>

            </div>
            <div id="footer">
                <%@include file="../pageparts/footer.jsp"%>
            </div>
        </div>
    </body>
</html>

