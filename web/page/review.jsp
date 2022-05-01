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
            String sql = " ";
            String btnValue = "Send";
            String email=" ", sreviews=" ";
            try {

                if (request.getParameter("Action").equalsIgnoreCase("Send")) {
                    try {
                         email = request.getParameter("email");
                         sreviews = request.getParameter("sreviews");
                         out.print(email);
                               out.print(sreviews);
                        sql = "INSERT INTO `mydb`.`review` (`id`, `email`, `sreviews`) VALUES (NULL , '" + email + "','" + sreviews + "')";
                        out.print(sql);
                        int row = db.st.executeUpdate(sql);
                        out.print("<script>alert('Data Saved');window.location.assign('?');</script>");
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
                }  else {
                      email=" ";
                    sreviews="";

                }
            } catch (Exception e) {
                    email=" ";
                    sreviews=" ";
            }%>   
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
            <div id="content3">
                <div id="content3a">
                     <table>
            <tr ><td colspan="2" ></td></tr>
            <tr>
         <th>S.N</th>
            <th>E-mail</th>
                  <th> Reviews</th>
                  </tr>
                            <center><h3 class="selected1" ><b>Reviews:</b></h3> </center>
                                    
                                   <%                  
           try{
            String sql1="Select * from review";
            db.st.executeQuery(sql1);
          //out.print(sql1);
            db.rs=db.st.executeQuery(sql1);
    for(int i=1;db.rs.next();i++)
    {
    out.print("<tr><td>" + i + "</td><td>" + db.rs.getString(2) + "</td><td>" + db.rs.getString(3));
    }
    
   }catch(Exception e){out.print(e);}
           %>
                     </table>
                </div><br>
                     <div id="content3c">
                         <form method ="post">
                             <blockquote><b>Place your reviews here.</b></blockquote>
                             <input type="text" name="email" size=50 placeholder="E-mail here"><p>
                                      <textarea rows="4" cols="100" name="sreviews" placeholder="Write reviews."></textarea>
                             &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="Action" value="<%=btnValue%>">&nbsp;&nbsp;
                         </form>
            </div>
                </div>
                <div id="footer">
                <%@include file="../pageparts/footer.jsp"%>
            </div>
        </div>
              </body>
</html>