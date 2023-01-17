package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import Model.Payment;
import Model.Registration;




public class verifypaymentDAO {
    String dbURL = "jdbc:postgresql://localhost:5432/postgres";
    String user = "postgres";
    String pass = "system";

    protected Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(dbURL, user, pass);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return con;

    }
    
    public boolean updateVerification(Payment pmt, Registration rs) throws SQLException {
        boolean rowUpdated;
        try (Connection con = getConnection();
        		
             PreparedStatement ps = con.prepareStatement("update payment set payment_status=? where registration_id=?"); 
        	PreparedStatement ps2 = con.prepareStatement("update registration set registration_status=? where registration_id=?");
    	PreparedStatement ps3 = con.prepareStatement("update registration set staff_id=? where registration_id=?");) 

       
        {
            ps.setString(1, pmt.getPayStatus());
            ps.setString(2, rs.getRegistration_id());

            
            ps2.setString(1,"Approved");
            ps2.setString(2,rs.getRegistration_id());
            
            ps3.setInt(1,rs.getStaff_id());
            ps3.setString(2,rs.getRegistration_id());

            
            rowUpdated = ps.executeUpdate() > 0;
            ps2.executeUpdate();
            ps3.executeUpdate();

        }
		return rowUpdated;
    }

    public boolean updateRejectVerification(Payment pmt, Registration rs) throws SQLException {
        boolean rowUpdated;
        try (Connection con = getConnection();
        		
                PreparedStatement ps = con.prepareStatement("update payment set payment_status=? where registration_id=?"); 
            	PreparedStatement ps2 = con.prepareStatement("update registration set registration_status=? where registration_id=?");
        	PreparedStatement ps3 = con.prepareStatement("update registration set staff_id=? where registration_id=?");) 

        {

            ps.setString(1, pmt.getPayStatus());
            ps.setString(2, rs.getRegistration_id());

            
            ps2.setString(1,"Declined");
            ps2.setString(2,rs.getRegistration_id());
            
            ps3.setInt(1,rs.getStaff_id());
            ps3.setString(2,rs.getRegistration_id());

            
            rowUpdated = ps.executeUpdate() > 0;
            ps2.executeUpdate();
            ps3.executeUpdate();
        }
        return rowUpdated;
    }
 
    
    }