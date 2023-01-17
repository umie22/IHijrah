package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Payment;
import Model.Registration;

public class RegisterDAO {
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
    
    public String register (Registration register ) throws SQLException {
    	
    	String registration_id = "";
        try (Connection con = getConnection();
        		
             PreparedStatement ps = con.prepareStatement("insert into registration(participant_id,course_id,registration_date) values (?,?,?)"))

        {

            ps.setInt(1, register.getParticipant_id());
            ps.setInt(2, register.getCourse_id());
            ps.setString(3, register.getRegistration_date());        
            
            ps.executeUpdate();

            

            PreparedStatement selectSQL = con.prepareStatement
        			( "SELECT registration_id FROM registration WHERE participant_id=? ORDER BY registration_id");
        			
        			// Set ? values
        			selectSQL.setString(1, Integer.toString(register.getParticipant_id()));
        			
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
    
