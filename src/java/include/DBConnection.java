
package include;

import java.sql.DriverManager;

public class DBConnection {
    public java.sql.Connection con;
    public java.sql.ResultSet rs;
    public java.sql.Statement st;
    public static void main(String[] args) {
        new DBConnection();
    }

    public DBConnection() {
        try{
        String url="jdbc:mysql://localhost:3306/mydb";
        String userName="root";
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection(url,userName,"");
        st=con.createStatement();
	// System.out.println(con);
        }catch(Exception e){}
    }
     public void close()
        {
        try{
           con.close();    
           rs.close();
        }catch(Exception e){}
      }
   }
