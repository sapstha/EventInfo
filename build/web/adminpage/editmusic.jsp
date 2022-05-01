<%@page import="include.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

     <%
            DBConnection db = new DBConnection();
            String sql = "";
            String btnValue = "Save";
            String event = "", date = "", venue = "", organizer = "",id="";
            try {

                if (request.getParameter("Action").equalsIgnoreCase("save")) {
                    try {
                        event = request.getParameter("event");
                        date = request.getParameter("date");
                            venue = request.getParameter("venue");
                          organizer = request.getParameter("organizer");
                        sql = "insert into music VALUES(null,'" + event + "','" + date + "','" + venue + "','" + organizer + "')";
                        //out.print(sql);
                        int row = db.st.executeUpdate(sql);
                        out.print("<script>alert('Data Saved');window.location.assign('?');</script>");
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
                }else if (request.getParameter("Action").equalsIgnoreCase("Update")) {
                    try {
                         id = request.getParameter("id");
                        event = request.getParameter("event");
                        date = request.getParameter("date");
                        venue = request.getParameter("venue");
                        organizer = request.getParameter("organizer");
                        
                        sql = "update music set event='" + event + "', date='" + date + "', venue='" + venue + "',organizer='" + organizer +"' where id='" + id + "'";
                        //out.print(sql);
                        int row = db.st.executeUpdate(sql);
                        out.print("<script>alert('Updated');window.location.assign('?');</script>");
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
                }
                else if (request.getParameter("Action").equalsIgnoreCase("Edit")) {

                    try {
                     id = request.getParameter("id");
                        btnValue = "Update";
                       sql = "select * from music where id='" + id + "'";
                       out.print(sql);
                       db.rs = db.st.executeQuery(sql);
                        db.rs.next();
                            id= db.rs.getString(1);
                        event = db.rs.getString(2);
                       date = db.rs.getString(3);
                        venue = db.rs.getString(4);
                    organizer = db.rs.getString(5);
                       
                      out.print(event+date+venue+organizer);

                    } catch (Exception e) {
                    }

                }else {
                    event = "";
                    date = "";
                    venue = "";
                    organizer = "";  
                    id="";
                    
                }
            } catch (Exception e) {
                    event = "";
                    date = "";
                    venue = "";
                    organizer = "";  
                    id="";
            }%>
                <html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
         <h1>Update music events</h1>
        <a href="updatemusic.jsp">Back</a>
        <form method="get">
        
            <table><tr>
                    <td> ID </td><td>:</td><td><input type="text" name="id" value="<%=id%>"></td></tr>
                <tr><td>Event </td><td>:</td><td><input type="text" name="event" value="<%=event%>"></td></tr>
                <tr><td>Date </td><td>:</td><td><input type="text" name="date" value="<%=date%>"></td></tr>
                 <tr> <td>Venue </td><td>:</td><td><input type="text" name="venue" value="<%=venue%>"></td></tr>
                <tr><td> Organizer </td><td>:</td><td><input type="text" name="organizer" value="<%=organizer%>"></td></tr>                           
                <tr><td colspan="3"> <input type="submit" value="<%=btnValue%>" name="Action"></td></tr>
            </table>
        </form>  
                </div>

            </div>
            <div id="footer">
                <%@include file="../pageparts/footer.jsp"%>
            </div>
        </div>
    </body>
</html>

