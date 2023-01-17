package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	static Connection con;

	private static final String DB_DRIVER = "org.postgresql.Driver";
	private static final String DB_CONNECTION = "jdbc:postgresql://localhost:5432/postgres";
	private static final String DB_USER = "postgres";	
	private static final String DB_PASSWORD = "system";

	public static Connection getConnection() {
		try {
			try {
				//1. Load driver
				Class.forName(DB_DRIVER);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			//2. Create connection
			//(database name,db username,db password)
			con = DriverManager.getConnection(DB_CONNECTION,DB_USER,DB_PASSWORD); 
		}catch(SQLException e) {
			System.out.println(e);
		}
		return con;
		
	}

}
