<%@page import="include.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                          <li><b><a  href="../index.jsp">HOME</a></b></li>
                                   <li><b><a  href="org.jsp">ORGANIZATION</a></b></li>
                            <li><b><a  href="../register.jsp">REGISTER</a></b></li>
                            <li><b><a  href="../login.jsp">LOGIN</a></b></li>
                            <li><b><a  href="review.jsp">REVIEWS</a></b></li>
                    </ul>
                        </div>
            </div>
                <div id="bar">
                      <div id="bar_wrapper">
                    <ul>
                        <li>VIEW THE EVENTS:</li>
                        <li><a class ="selected" href="socialevents.jsp"> Social Events</a></li>
                        <li><a class ="selected" href="techevents.jsp">Tech Events</a></li>
                        <li><a class ="selected" href="edufairs.jsp">Educational Fairs</a></li>
                        <li><a class ="selected" href="music.jsp">Music and Concerts</a></li>
                    </ul>
                      </div>
                </div>
            <div id="musics">
                  <blockquote><b>MUSIC AND CONCERTS</b></blockquote>
                </div>
            <div id="content5" class="image">         
                <center><h2 style="color: black; font-family: initial; font-size: 20px;">All upcoming Music and Concerts.</h2></center><br>
         <table>
            <tr ><td colspan="5" ></td></tr>
            <tr>
         <th>S.N</th>
            <th>Event</th>
                  <th> Date</th>
                      <th> Venue</th>
                          <th> Organizer</th>
                  </tr>      
                                   <%                     
                 DBConnection db = new DBConnection();                        
           try{
            String sql1="Select * from music";
            db.st.executeQuery(sql1);
          //  out.print(sql);
            db.rs=db.st.executeQuery(sql1);
    for(int i=1;db.rs.next();i++)
    {
    out.print("<tr><td>" + i + "</td><td>" + db.rs.getString(2) + "</td><td>" + db.rs.getString(3) + "</td><td>" + db.rs.getString(4) + "</td><td>" + db.rs.getString(5));
    }
    
   }catch(Exception e){out.print(e);}
           %></table>
            </div>
            <div id="footer">
                <%@include file="../pageparts/footer.jsp"%>
            </div>
        </div>
              </body>
</html>