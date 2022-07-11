package Dao;

import static java.lang.System.out;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.Payment;
import db.ConnectionManager;

public class PaymentDAO {

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
	    
	    public void addPayment(Payment newFile) throws SQLException{
	    	
	    	try (Connection con = getConnection())
	           {
	    			payID = newFile.getPayment_id();
	    			payDate = newFile.getPayment_date();
	    			payTime = newFile.getPayment_time();
	    			payStatus = newFile.getPayment_status();
	    			payReceipt = newFile.getPayment_receipt();
	    			inputStream = payReceipt.getInputStream();
	    			
	    			PreparedStatement addSQL = con.prepareStatement("INSERT INTO payment" + "(payment_id, payment_time, payment_date,payment_status, payment_receipt)");
	    			
	    			addSQL.setString(1, payID);
	    			addSQL.setString(2, payTime);
	    			addSQL.setString(3, payDate);
	    			addSQL.setString(4, payStatus);
	    			addSQL.setBlob(5, payReceipt);
	    			addSQL.executeUpdate();
	    			
	    			System.out.println(addSQL);
	    			
	           }
	           catch (Exception e) {
	               e.printStackTrace();
	           }
	       }
	    
}
