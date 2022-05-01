<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Event Info</title>
		  <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    </head>
    <body>
        <div id="container">
                 <div id="header"><br>
                <div id="header_wrapper"><br>
			<ul>
                          <li><b><a  href="orghome.jsp">HOME</a></b></li>
                            <li><b><a  href="orglogout.jsp">LOGOUT</a></b></li>
                    </ul>
                        </div>
            </div>
            <div id="content">
                <div id="bar">
                      <div id="bar_wrapper">
                    <ul>
                        <li>POST EVENTS:</li>
                        <li><a class ="selected" href="orgpage/orgsocial.jsp"> Social Events</a></li>
                        <li><a class ="selected" href="orgpage/orgtech.jsp">Tech Events</a></li>
                        <li><a class ="selected" href="orgpage/orgedu.jsp">Educational Fairs</a></li>
                        <li><a class ="selected" href="orgpage/orgmusic.jsp">Music and Concerts</a></li>
                    </ul>
                      </div>
                </div>
                <div id="main">
				<div id="main1">
                                   
                                    <center>  <h2><i>Welcome to EVENT INFO</i></h2> </center>
                                    
                                  <p class="justifier">WELCOME TO ORGANIZATION PANEL.</p>
                                      
					
                </div>
                </div>
				</div>
          <div id="footer">
                <%@include file="pageparts/footer.jsp"%>
            </div>
        </div>
    </body>
</html>

