
<%@page import="include.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <%
            DBConnection db = new DBConnection();
            String sql = "";
            String btnValue = "Save";
            String name = "", email = "", password = "", category = "",id="";
            try {

                if (request.getParameter("Action").equalsIgnoreCase("save")) {
                    try {
                        name = request.getParameter("name");
                        password = request.getParameter("password");
                            email = request.getParameter("email");
                          category = request.getParameter("category");
                        sql = "insert into user VALUES(null,'" + name + "','" + password+ "','" + email + "','" + category + "')";
                        //out.print(sql);
                        int row = db.st.executeUpdate(sql);
                        out.print("<script>alert('Data Saved');window.location.assign('userdetails.jsp');</script>");
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
                }else if (request.getParameter("Action").equalsIgnoreCase("Update")) {
                    try {
                        id = request.getParameter("id");
                       email = request.getParameter("email");
                        name = request.getParameter("name");
                       password = request.getParameter("password");
                      category = request.getParameter("category");
                        sql = "update user set name='" + name + "',password='" + password + "',email='" + email + "',category='" + category + "' where id='" + id + "'";
                        //out.print(sql);
                        int row = db.st.executeUpdate(sql);
                        out.print("<script>alert('Updated');window.location.assign('userdetails.jsp');</script>");
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
                }
                else if (request.getParameter("Action").equalsIgnoreCase("Edit")) {

                    try {
                     id = request.getParameter("id");
                        btnValue = "Update";
                       sql = "select * from user where id='" + id + "'";
                       //out.print(sql);
                       db.rs = db.st.executeQuery(sql);
                        db.rs.next();
                        id= db.rs.getString(1);
                        name = db.rs.getString(2);
                       password = db.rs.getString(3);
                    email= db.rs.getString(4); 
                     category= db.rs.getString(5);
                      out.print(name+password+category+email);

                    } catch (Exception e) {
                    }

                }else {
                    name = "";
                    email= "";
                    password = "";
                    category = "";
                 id="";
                    
                }
            } catch (Exception e) {
                name = "";
                    email= "";
                    password = "";
                    category = "";
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
            <div id="content">
                <div id="bar">
                      <div id="bar_wrapper">
                    <ul>
                       <li>POST/UPDATE EVENTS:</li>
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
                <div id="main">
<h1>Update User</h1>
        <a href="userdetails.jsp">Back</a>
        <form method="get">
        
            <table><tr>
                    <td> ID </td><td>:</td><td><input type="text" name="id" value="<%=id%>"></td></tr>
                <tr><td> Name </td><td>:</td><td><input type="text" name="name" value="<%=name%>"></td></tr>
                <tr><td>Password </td><td>:</td><td><input type="password" name="password" value="<%=password%>"></td></tr>
                 <tr> <td>Email </td><td>:</td><td><input type="text" name="email" value="<%=email%>"></td></tr>
                 <tr><td> Category </td><td>:</td><td><input type="text" name="category" value="<%=category%>"></td></tr>          
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

  
