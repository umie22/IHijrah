package Dao;

import static java.lang.System.out;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.Penceramah;

public class PenceramahDAO {
	
		String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0";
		String user = "zaiaryvqbpwwcb";
	    String pass = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";
	   
	    protected Connection getConnection() {
	        Connection con = null;
	        try {
	            Class.forName("org.postgresql.Driver");
	             con=DriverManager.getConnection("jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0","zaiaryvqbpwwcb","731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b");
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	        return con;

	    }

	public void addPen(Penceramah pen) throws SQLException{
		try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement
	                     ("insert into participant(participant_name,participant_email, participant_phoneno, participant_password) values(?,?,?,?)"))
	        {

	            ps.setString(1, pen.getPenName());
	            ps.setString(2, pen.getPenEmail());
	            ps.setString(3, pen.getPenPhone());
	            out.println(ps);
	            ps.executeUpdate();
	        }
	        catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

		
	}
