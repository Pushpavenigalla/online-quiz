package oes.db;
import java.sql.*;
public class Provider {
    public static Connection getJdbcConnection()
    {
        Connection con = null;
	try
        { 
            Class.forName("com.mysql.cj.jdbc.Driver");
            
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","root");
	    System.out.println("Connection successful!");
	}catch (Exception e) {System.out.println(e);}
    return con;
    }
}
	