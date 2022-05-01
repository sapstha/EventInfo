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
            <div id="contentorg">  
                <blockquote><center><b>ORGANIZATIONS INVOLVED</b></center></blockquote>
                 <p class="justified"><a  href="http://micnepal.org/" target="_blank">1.micnepal.org</a></p>
        <img src="../assets/img/mic.png " alt="Smiley face" height="80" width="200">
                     <p class="justified"><a href="http://e-leoclubhouse.org/sites/kathmandusamakhushi/">2.leoclubhouse.org</a></p>
                 <img src="../assets/img/lion.png " alt="Smiley face" height="100" width="120">
                     <p class="justified"><a href="https://www.lftechnology.com/">3.lftechnology.com</a></p>
                      <img src="../assets/img/leapfrog.jpg " alt="Smiley face" height="80" width="200">
            </div>
            <div id="footer">
                <%@include file="../pageparts/footer.jsp"%>
            </div>
        </div>
              </body>
</html>