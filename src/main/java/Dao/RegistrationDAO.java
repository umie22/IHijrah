package Dao;

import static java.lang.System.out;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.Registration;

public class RegistrationDAO {
	
	String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0";
    String user = "zaiaryvqbpwwcb";
    String pass = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";
    //accdao
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
    public void addRegister (Registration regis) throws SQLException {

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement
                     ("insert into registration(registration_id,registration_date,registration_status) values(?,?,?)"))
        {
        	ps.setString(1, regis.getRegister_id());
        	ps.setString(2, regis.getRegister_date());
        	ps.setString(3, regis.getRegister_status());
        	
            
            out.println(ps);
            ps.executeUpdate();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void addPaymentOnline (Payment pmt) throws SQLException {

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement
                     ("insert into payment(payment_id,payment_type,payment_date,payment_status,Bank_Name) values(?,?,?,?,?)"))
        {
        	ps.setString(1, pmt.payment_id());
        	ps.setString(2, pmt.payment_date());
        	ps.setString(3, pmt.payment_type());
        	ps.setString(4, pmt.payment_status());
        	ps.setString(5, pmt.Bank_Name());


        	
            
            out.println(ps);
            ps.executeUpdate();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void addPaymentOffline (Payment pmt) throws SQLException {

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement
                     ("insert into payment(payment_id,payment_type,payment_date,payment_status) values(?,?,?,?)"))
        {
        	ps.setString(1, pmt.payment_id());
        	ps.setString(2, pmt.payment_date());
        	ps.setString(3, pmt.payment_type());
        	ps.setString(4, pmt.payment_status());
        	
            
            out.println(ps);
            ps.executeUpdate();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
