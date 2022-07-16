package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Payment;
import Model.Registration;

public class RegisterDAO {
    String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
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
    
    public String register (Registration register ) throws SQLException {
    	
    	String registration_id = "";
        try (Connection con = getConnection();
        		
             PreparedStatement ps = con.prepareStatement("insert into registration (participant_id,course_id,registration_date) values (?,?,?)");
      	     PreparedStatement ps2 = con.prepareStatement("insert into payment(payment_date,payment_time,payment_receipt) values(?,?,?)");)


        {

            ps.setInt(1, register.getParticipant_id());
            ps.setInt(2, register.getCourse_id());
            ps.setString(3, register.getRegistration_date());        
            
            ps.executeUpdate();

            
            //ps2.setString(1,"Approved");
            //ps2.setString(2,pmt.getPayID());

            
            //rowUpdated = ps.executeUpdate() > 0;
          //  ps2.executeUpdate();
            PreparedStatement selectSQL = con.prepareStatement
        			( "SELECT registration_id FROM registration WHERE participant_id = ? ORDER BY registration_id");
        			
        			// Set ? values
        			selectSQL.setInt(1, register.getParticipant_id());
        			
        			// Execute SQL
        			ResultSet result = selectSQL.executeQuery();
        		
        			// Assign booking id
        			while(result.next()) {
        				registration_id = result.getString("registration_id");
        			}}
        
        catch (Exception e) {
            e.printStackTrace();
        }
        
        return registration_id;
    }
}
    
