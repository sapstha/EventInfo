<%@page import="include.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DBConnection db=new DBConnection();
    String username="",password="",sql="";
    int row=0;
    
    try{
    if(request.getParameter("Action").equalsIgnoreCase("LOGIN")){
      
      username=request.getParameter("username");
      password=request.getParameter("password");
      try{
      sql="select username,password from admin where username='"+username+"'";
       db.rs=db.st.executeQuery(sql);
      db.rs.next();
      String DatabasePass=db.rs.getString(2);
        try{
          if(password.equalsIgnoreCase(DatabasePass)){
        //        out.print("<script>alert('Login successful');window.location.assign('?');</script>");
                 session.setAttribute("username",db.rs.getString(1));
             session.setAttribute("password",db.rs.getString(2));
             out.print("<script>window.location.assign(\""+request.getContextPath()+"/adminindex.jsp\");</script>");
             }
            
         }catch(Exception e){}
        row++;
       }catch(Exception e){}
      
     }
    if(row==0){
        out.print("<script>alert('Id Not Match');window.location.assign('?');</script>");
    }else{
        out.print("<script>alert('Password Not Match');window.location.assign('?');</script>");
    }
    }catch(Exception e){}
  %>
<html>
    <head>
        <title>Event Info</title>
		  <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    </head>
    <body>
        <div id="container">
                      <div id="header"><br>
            </div>
            <div id="adminloginto">
            <div id="content9">
                <center><h1><b>ADMIN LOGIN</b></h1><br><br></center>
                    <form method="post" class="new">
                        Username:-&nbsp;<input type="text" name="username" size=30 required=""><p>
                     Password:-&nbsp;<input type="password" name="password" id="password" size=30 placeholder="Password" required=""><p>
                                <b><input type="submit" name="Action" id="submit" value="LOGIN"></b><br><br>
                    </form>
                  
                
            </div>
                </div>
            <div id="footer">
                <%@include file="pageparts/footer.jsp"%>
            </div>
        </div>
    </body>
</html>