package okkut;

import static java.lang.System.out;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class AccountDA {
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

    public void addAcc (Account acc) throws SQLException {

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement
                     ("insert into participant(participant_name,participant_email, participant_phoneno, participant_password) values(?,?,?,?)"))
        {

            ps.setString(1, acc.getPartName());
            ps.setString(2, acc.getPartEmail());
            ps.setString(3, acc.getPartPhone());
            ps.setString(4, acc.getPartPass());
            out.println(ps);
            ps.executeUpdate();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
