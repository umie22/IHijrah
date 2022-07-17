package Controller;

import javax.servlet.*;
import javax.servlet.http.*;

import Model.Payment;

import javax.servlet.annotation.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "PaymentServlet", value = "/PaymentServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50
)
public class PaymentServlet extends HttpServlet {
	
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String id = request.getParameter("id");
        java.sql.Connection con = null;
        Statement st1;
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0", "zaiaryvqbpwwcb", "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b");
            st1 = con.createStatement();
            PreparedStatement ps = con.prepareStatement("SELECT pt_receipt FROM payment WHERE payment_id=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
 
            String imgLen = "";
            while (rs.next()) {
                imgLen = rs.getString(1);
                System.out.println(imgLen.length());
                int len = imgLen.length();
                byte[] rb = new byte[len];
                InputStream readImg = rs.getBinaryStream(1);
                int index = readImg.read(rb, 0, len);
                out.println("index----------------" + index);
                response.reset();
                response.setContentType("image");
                response.getOutputStream().write(rb, 0, len);
                response.getOutputStream().flush();
 
            }
            rs.close();
 
            ps.close();
        } catch (Exception e) {
        //out.println(e);
        }
    }

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String action = request.getParameter("action");
        switch (action) {
		   case "savefile":
		    	savefileonline(request, response);
		        break;

		    case "saveoffline":
		    	saveoffline(request,response);
		        break;


		}

    }
    
    









		private void savefileonline(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			FileInputStream fis=null; 
	           String status="Pending";
	            String registration_id = request.getParameter("registration_id");
                Timestamp Datentime = new Timestamp(System.currentTimeMillis());

		 	Part filePart =request.getPart("payimage");  
		 	
	        PreparedStatement st2 = null;

		 	//InputStream inputStream = null;
			String name = request.getParameter("BankName");
            String payment_id="";

			InputStream fileContent = filePart.getInputStream();
			Payment t = new Payment();
			t.setName(name);
			
			String dbUrl = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
			String username = "zaiaryvqbpwwcb";
			String password = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";
			
			try {
				Class.forName("org.postgresql.Driver");
				Connection connection = DriverManager.getConnection(dbUrl,username,password);
				
				//SQL Statement/Query 
				PreparedStatement pst = connection.prepareStatement("insert into payment (payment_status,payment_date,registration_id,pt_receipt) values (?,?,?,?)");
				// Set string - set for ? by order
	            pst.setString(1,status);
	            pst.setTimestamp(2,Datentime);
	            pst.setString(3,registration_id);
	            pst.setBinaryStream(4, fileContent);

				
				
				pst.executeUpdate();
				
		           PreparedStatement selectSQL = connection.prepareStatement
		        			( "SELECT payment_id FROM payment WHERE registration_id = ? ");
		            
		            
					selectSQL.setString(1, registration_id);
					
					ResultSet result = selectSQL.executeQuery();

					while(result.next()) {
						payment_id=result.getString("payment_id");

					}
					
		            String BankName= request.getParameter("BankName");

		            st2 = connection.prepareStatement("insert into online(payment_id,payment_status,payment_date,registration_id,bank_name,pt_receipt) values(?,?,?,?,?,?)");

		            st2.setString(1,payment_id);
		            st2.setString(2,status);
		            st2.setTimestamp(3,Datentime);
		            st2.setString(4,registration_id);
		            st2.setString(5,BankName);
		            st2.setBinaryStream(6, fileContent);

		            
		             int count = st2.executeUpdate();
		             
		 			response.sendRedirect("AccountParticipantBARU.jsp");
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		// TODO Auto-generated method stub
		
	


		private void saveoffline(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			FileInputStream fis=null; 
	           String status="Pending";
	            String registration_id = request.getParameter("registration_id");
             Timestamp Datentime = new Timestamp(System.currentTimeMillis());

		 	Part filePart =request.getPart("payimage");  
		 	
	        PreparedStatement st2 = null;

		 	//InputStream inputStream = null;
			String name = request.getParameter("BankName");

			InputStream fileContent = filePart.getInputStream();
			Payment t = new Payment();
			t.setName(name);
			
			String dbUrl = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
			String username = "zaiaryvqbpwwcb";
			String password = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";
			
			try {
				Class.forName("org.postgresql.Driver");
				Connection connection = DriverManager.getConnection(dbUrl,username,password);
				
				//SQL Statement/Query 
				PreparedStatement pst = connection.prepareStatement("insert into payment (payment_status,payment_date,registration_id,pt_receipt) values (?,?,?,?)");
				// Set string - set for ? by order
	            pst.setString(1,status);
	            pst.setTimestamp(2,Datentime);
	            pst.setString(3,registration_id);
	            pst.setBinaryStream(4, fileContent);

				
				
				pst.executeUpdate();
				
		             
		 			response.sendRedirect("Account.jsp");
			} catch(Exception e) {
				e.printStackTrace();
			}
            }

		

		
		
}
