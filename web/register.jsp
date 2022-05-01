<%@page import="include.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Event Info</title>
		  <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
                  <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js">
</script>
                  <script>
$(document).ready(function(){
    $('#purpose').on('change', function() {
      if ( this.value === "organization")
      {
        $("#contact").show();
      }
      else
      {
        $("#contact").hide();
      }
    });
});

</script>
    </head>
    <body>
        
          <%
            DBConnection db = new DBConnection();
            String sql = "";
            //String btnValue = "Register";
            String name = "", password="", email="", category="", id="", phoneno="";
            try {

                if (request.getParameter("Action").equalsIgnoreCase("UserRegister")) {
                    try {
                        name = request.getParameter("name");
                        password = request.getParameter("password"); 
                         email = request.getParameter("email");
                         category = request.getParameter("category");
                         //field = request.getParameter("field");
                        
                        sql = "insert into user VALUES(null,'" + name + "','" + password + "','" + email + "','" + category + "')";
                        //out.print(sql);
                        int row = db.st.executeUpdate(sql);
                        out.print("<script>alert('Data Saved');window.location.assign('?');</script>");
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
                }else if (request.getParameter("Action").equalsIgnoreCase("OrgRegister")) {
                    try {
                        name = request.getParameter("name");
                       password = request.getParameter("password");
                       email = request.getParameter("email");
                      category = request.getParameter("category");
                       //field = request.getParameter("field");
                         phoneno = request.getParameter("phoneno");
                         sql = "insert into org VALUES(null,'" + name + "','" + password + "','" + email + "','" + category + "','" + phoneno +"',null)";
                        //out.print(sql);
                        int row = db.st.executeUpdate(sql);
                        out.print("<script>alert('Data Saved for org');window.location.assign('?');</script>");
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
                } 
                else {
                    name = "";
                    password="";
                    email="";
                    category="";
                    //field="";
                    id = "";
                    phoneno="";
                }
            } catch (Exception e) {
                 name = "";
                    password="";
                    email="";
                    category="";
                    //field="";
                    id = "";
                    phoneno="";
            }%>   
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
            <div id="signup">
            <div id="content8">
                <a class="justifier">
                    <center><h1 style="font-size: 30px; font-family: serif; color:red;"><b>SIGN UP FORM</b></h1><br><br></center>
                    <form method="get" class="new">
                        <input type="hidden" name="stuid" value="<%=id%>"/>
                       &nbsp;Full Name:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" size=30 placeholder="Enter Full Name" value="<%=name%>"><p>
                        &nbsp;Password:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" size=30 placeholder="Enter Password" value="<%=password%>" ><p>
                           &nbsp;Email Address:- <input type="email" name="email" size=30 placeholder="Enter Email Address" value="<%=email%>"><p>
                           &nbsp;Category:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <select id='purpose' name="category">
                        <option value="0"></option>
                        <option value="user">User</option>
                        <option value="organization">Organization</option>
                        </select><p>
                            <div style='display:none;' id='contact'>
                            <table>
                            <tr>
                            <td>Contact No.</td><td>:-</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size=30 placeholder="Enter Contact Number" name="phoneno" value="<%=phoneno%>"></td>
                            </tr>
                             </table>
                                      <b><input type="submit" name="Action" value="OrgRegister"></b>
                                
</div>
                         <b><input type="submit" name="Action" value="UserRegister"></b>
                        
                                    </form>
                        </div>
            </div>
                <div id="footer">
                <%@include file="pageparts/footer.jsp"%>
            </div>
        </div>       
    </body>
</html>