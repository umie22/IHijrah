<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
String id = request.getParameter("d");
String a = "Not Active";

String DB_DRIVER = "org.postgresql.Driver";
	String DB_CONNECTION = "jdbc:postgresql://localhost:5432/postgres";
   	String DB_USER = "postgres";	
   	String DB_PASSWORD = "system";

   Connection conn = null;
   Statement stat = null;
   ResultSet res = null;
   PreparedStatement stmt = null;
Class.forName(DB_DRIVER).newInstance();


 conn = DriverManager.getConnection(DB_CONNECTION,DB_USER,DB_PASSWORD);
String query = "update participant set participant_status=? where participant_id='"+id+"'";
stmt = conn.prepareStatement(query);

	stmt.setString(1,a);
	
	stmt.executeUpdate();
	response.sendRedirect("ParticipantListAccount.jsp");
	
%>

