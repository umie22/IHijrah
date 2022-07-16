package Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
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

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();

        PreparedStatement st = null;
        ResultSet rs=null;
        Part part;

        try{
            String status="Pending";
            String registration_id = request.getParameter("registration_id");
            System.out.println(registration_id);
            
            Timestamp Datentime = new Timestamp(System.currentTimeMillis());
 		   

            Class.forName("org.postgresql.Driver");
            String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
            String user = "zaiaryvqbpwwcb";
            String pass = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";
            Connection conn = DriverManager.getConnection(dbURL, user, pass);

            try {
                part = request.getPart("payimage");
            } catch (Exception err) {
                err.printStackTrace();
                System.out.println(err.getMessage());
                return;
            }

            String host = request.getScheme() + "://" + request.getHeader("host") + "/";
            String imageFileName = part.getSubmittedFileName();
            String urlPathForDB = host + "upload/" + imageFileName;
            String applicationPath = getServletContext().getRealPath("");
            String savePath = applicationPath + "upload" + File.separator + imageFileName;

            if(!new File(applicationPath + "upload").exists()) {
                boolean created  = new File(applicationPath + "upload").mkdir();
                if(!created) {
                    System.out.println("Could not create folder: " + applicationPath + "upload");
                }
            }

            try {
                part.write(savePath);
            } catch (Exception err) {
                err.printStackTrace();
                System.out.println("Could not upload image file!");
                return;
            }

            st = conn.prepareStatement("insert into payment ( payment_status, payment_receipt,payment_date,registration_id) values (?,?,?,?)");
            st.setString(1,status);
            st.setString(2,urlPathForDB);
            st.setTimestamp(3,Datentime);
            st.setString(4,registration_id);

            int count = st.executeUpdate();

            if(count>0)
            {
                out.println("insert successfully");
                RequestDispatcher dispatcher = request.getRequestDispatcher("ImageRefer.jsp");
                dispatcher.forward (request, response);
            }
            else
            {
                out.println("Not successfully");
                RequestDispatcher dispatcher = request.getRequestDispatcher("uploadpayment.jsp");
                dispatcher.forward (request, response);
            }
        }catch(Exception e){
            out.println(e);
            e.printStackTrace();
            
            
        }
    }
}