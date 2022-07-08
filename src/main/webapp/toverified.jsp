<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
    Class.forName("org.postgresql.Driver");
    String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0";
    String user = "zaiaryvqbpwwcb";
    String pass = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";
    String id=request.getParameter("id");
    int num=Integer.parseInt(id);
    String sql= "select * from payment join registration using(payment_id) join participant using(participant_id) join course using (course_id) where payment_id ='"+num+"'";
    Connection con=DriverManager.getConnection(dbURL, user, pass);
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery(sql);
    while(rs.next())
    {
%> 	

	<p><%=rs.getString("registration_id") %></p>
	<p><%=rs.getString("participant_id") %></p>
	<p><%=rs.getString("participant_name") %></p>
	<p><%=rs.getString("payment_id") %></p>
	<p><%=rs.getString("course_id") %></p>
	<p><%=rs.getString("course_type") %></p>
	<p><%=rs.getString("registration_date") %></p>
	<p><%=rs.getString("registration_status") %></p>

            
            
    
    <form action="verifyParticipant" method="post">
    <button formaction='verify?id=<%=rs.getString("payment_id") %>'>Verify Participant</button>
    <input type="hidden" name="verify"></form>
    
    <%} %>
</body>


</html>