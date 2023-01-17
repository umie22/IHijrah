<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("d");

String DB_DRIVER = "org.postgresql.Driver";
	String DB_CONNECTION = "jdbc:postgresql://localhost:5432/postgres";
	String DB_USER = "postgres";	
	String DB_PASSWORD = "system";

Connection conn = DriverManager.getConnection(DB_CONNECTION,DB_USER,DB_PASSWORD);
Statement stat = conn.createStatement();
stat.executeUpdate("delete from schedule where schedule_id='"+id+"'");
response.sendRedirect("schedulelist.jsp");
%>

