<%@page import="include.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Event Info</title>
		  <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    </head>
    <body>
                    
        <div id="container">
                 <div id="header"><br>
                <div id="header_wrapper"><br>
			<ul>
                          <li><b><a  href="index.jsp">HOME</a></b></li>
                          <li><b><a  href="page/org.jsp">ORGANIZATION</a></b></li>
                            <li><b><a  href="register.jsp">REGISTER</a></b></li>
                            <li><b><a  href="login.jsp">LOGIN</a></b></li>
                            <li><b><a  href="page/review.jsp">REVIEWS</a></b></li>
                    </ul>
                        </div>
            </div>
            <div id="content">
                <div id="bar">
                      <div id="bar_wrapper">
                    <ul>
                        <li>VIEW THE EVENTS:</li>
                       <li><a class ="selected" href="page/socialevents.jsp"> Social Events</a></li>
                        <li><a class ="selected" href="page/techevents.jsp">Tech Events</a></li>
                        <li><a class ="selected" href="page/edufairs.jsp">Educational Fairs</a></li>
                        <li><a class ="selected" href="page/music.jsp">Music and Concerts</a></li>
                    </ul>
                      </div>
                </div>
                <div id="main">
				<div id="main1">
                                   
                                    <center>  <h2><i>Welcome to EVENT INFO</i></h2> </center>
                                  <p class="justifier">Don't you sometimes get upset when you miss out some of the important events that you were
					willing to attend just because you didn't know the exact venue and change in time of that particular events?</p>
			    <p class="justifier">DON'T WORRY! Now you can always get the notifications of latest updated events. Never miss your events!.</p>
                                      
					
                </div>
				<div id="main2">
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
            String sql1="Select * from home";
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
				</div>
            </div>
          <div id="footer">
                <%@include file="pageparts/footer.jsp"%>
            </div>
        </div>
    </body>
</html>

