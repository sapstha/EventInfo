<%@page import="include.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DBConnection db=new DBConnection();
    String email="",password="",sql="", category, code="";
    int row=0;
    
    try{
    if(request.getParameter("Action").equalsIgnoreCase("UserLOGIN")){
      
      email=request.getParameter("email");
      password=request.getParameter("password");
      try{
      sql="select email,password,category from user where email='"+email+"'";
       db.rs=db.st.executeQuery(sql);
      db.rs.next();
      String DatabasePass=db.rs.getString(2);
        try{
          if(password.equalsIgnoreCase(DatabasePass)){
              category=db.rs.getString(3);
              if(category.equalsIgnoreCase("user")){
        //        out.print("<script>alert('Login successful');window.location.assign('?');</script>");
                 session.setAttribute("email",db.rs.getString(1));
             session.setAttribute("password",db.rs.getString(2));
             out.print("<script>window.location.assign(\""+request.getContextPath()+"/index.jsp\");</script>");
             }
            
           }
         }catch(Exception e){}
        //row++;
       }catch(Exception e){ row=2;}
      
     } 
    else if(request.getParameter("Action").equalsIgnoreCase("OrgLOGIN")){
      
      email=request.getParameter("email");
      password=request.getParameter("password");
      code=request.getParameter("code");
      try{
      sql="select email,password,category,code from org where email='" + email + "'";
       db.rs=db.st.executeQuery(sql);
      db.rs.next();
      String DatabasePass=db.rs.getString(2);
        try{
          if(password.equalsIgnoreCase(DatabasePass)){
              category=db.rs.getString(3);
              if(category.equalsIgnoreCase("organization")){
                    String code1=db.rs.getString(4);
                  try{  
                      if(code.equalsIgnoreCase(code1)){
                    out.print("<script>alert('Login successful');window.location.assign('orghome.jsp');</script>");
                      }
                      else
                      {
                        out.print("<script>alert('Verification Code Not Match');window.location.assign('?');</script>");  
                      }
             }catch(Exception e){}
            
           }
          }
         }catch(Exception e){row=1;}
        //row++;
       }catch(Exception e){ row=2;}
     } 
       
    if(row==2){
        out.print("<script>alert('Id Not Match');window.location.assign('?');</script>");
    }else if(row==1){
        out.print("<script>alert('Password Not Match');window.location.assign('?');</script>");
    }
    }catch(Exception e){}
  %>
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
            <div id="loginto">
            <div id="content7">
                <center><h1><b>LOGIN</b></h1><br><br></center>
                    <form method="post" class="new">
                        Email:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="email" size=30 placeholder="Email" required=""><p>
                     Password:-&nbsp;<input type="password" name="password" id="password" size=30 placeholder="Password" required=""><p>
                     Category:-&nbsp;
                            <select id='purpose' name="category">
                        <option value="0"></option>
                        <option value="user">User</option>
                        <option value="organization">Organization</option>
                        </select><p>
                            <div style='display:none;' id='contact'>
                            <table>
                            <tr>
                            <td>Verification Code</td><td>:-</td><td>&nbsp;<input type="text" name="code" size=30 placeholder="Enter Verification Code here"></td>
                            </tr>
                             </table>
                                      <b><input type="submit" name="Action" value="OrgLOGIN"></b>
                                
</div>
                                <b><input type="submit" name="Action" id="submit" value="UserLOGIN"></b><br><br>
                          Not a member?<a href="register.jsp" >Sign Up </a>now!
                    </form>
                  
                
            </div>
                </div>
            <div id="footer">
                <%@include file="pageparts/footer.jsp"%>
            </div>
        </div>
    </body>
</html>