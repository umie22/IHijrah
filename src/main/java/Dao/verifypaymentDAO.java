package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.Payment;




public class verifypaymentDAO {
    String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0";
    String user = "zaiaryvqbpwwcb";
    String pass = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";

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
    
    public boolean updateVerification(Payment pmt) throws SQLException {
        boolean rowUpdated;
        try (Connection con = getConnection();
        		
             PreparedStatement ps = con.prepareStatement("update payment set payment_status=? where payment_id=?"); 
        	PreparedStatement ps2 = con.prepareStatement("update registration set registration_status=? where payment_id=?");) 
       
        {

            ps.setString(1, pmt.getPayment_Status());
            ps.setString(2, pmt.getPayment_ID());
            
            ps2.setString(1,"Approved");
            ps2.setString(2,pmt.getPayment_ID());

            
            rowUpdated = ps.executeUpdate() > 0;
            ps2.executeUpdate();
        }
        return rowUpdated;
    }
    
    
    
    
    
    
    
    
    
    
    
    }