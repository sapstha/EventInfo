<%@page import="include.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Event Info</title>
        <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    </head>
    <body>
        <%
            DBConnection db = new DBConnection();
            String sql = "";
            String btnValue = "Send";
            String event = "", date = "", venue = "", organizer = "";
            try {

                if (request.getParameter("Action").equalsIgnoreCase("Send")) {
                    try {
                        event = request.getParameter("event");
                          date = request.getParameter("date");
                              venue = request.getParameter("venue");
                                 organizer = request.getParameter("organizer");
                        out.print(event);
                         out.print(date);
                                      out.print(venue);
                                             out.print(organizer);
                        //sql="insert into Index VALUES('" + event + "')";

                        sql = "INSERT INTO `mydb`.`social` (`id` ,`event`,`date`,`venue`,`organizer`)VALUES (NULL , '" + event + "','" + date + "','" + venue + "','" + organizer + "')";
                          out.print(sql);
                        int row = db.st.executeUpdate(sql);
                        out.print("<script>alert('Data Saved');window.location.assign('?');</script>");
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
                } else {
                    event = " ";
                    date = "";
                    venue = "";
                    organizer = "";
                }
            } catch (Exception e) {
                event = " ";
                date = "";
                venue = "";
                organizer = "";
            }%> 
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
                <div id="contentabc">
                    <form method ="post">
                        <textarea rows="8" cols="100" name="event" placeholder="Post upcoming social events"></textarea><br>
                        Event Date:-&nbsp;<input type="date" name="date" required="" ><p>
                            Venue:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="venue" size=30 placeholder="Post venue" required=""><p>
                            Organizer:-&nbsp;&nbsp;&nbsp;<input type="text" name="organizer" size=30 placeholder="Organizer's name" required=""><p>    
                            <input type="submit" name="Action" value="<%=btnValue%>">
                    </form>
                </div>

            </div>
            <div id="footer">
                <%@include file="../pageparts/footer.jsp"%>
            </div>
        </div>
    </body>
</html>