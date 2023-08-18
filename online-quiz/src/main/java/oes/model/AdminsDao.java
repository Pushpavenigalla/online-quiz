package oes.model;
//Lib import
import java.sql.*;
// Packages import
import oes.db.Admins;
import oes.db.Provider;

public class AdminsDao {
    public static boolean doValidate(Admins ad) {
         
        boolean status = false;
        try
        {
            Connection con = Provider.getJdbcConnection();
            String sql = "select * from admintable where userid=? and password=?"; // SQL Query
	    PreparedStatement pst = con.prepareStatement(sql);
	    pst.setString(1, ad.getUsername());
	    pst.setString(2, ad.getPassword());
	    ResultSet rs = pst.executeQuery();
	    if(rs.next())
            {
                status = true;
                System.out.println(status);
	    }
	    else
            {
                status = false;
                System.out.println(status);
            }
        }catch(Exception e){System.out.println(e);}
	return status;
    }
}
