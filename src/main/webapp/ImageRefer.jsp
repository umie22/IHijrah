<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26/1/2022
  Time: 10:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css">

<style>
    .container {
        position: relative;
        border-radius: 5px;
        background-color: white;
        padding: 20px 0 30px 0;
        width: 90%;
        border: 2px grey;
        border-style:solid;
        height:auto;
    }
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 80%;
    }
    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
    tr:nth-child(even) {
        background-color: #dddddd;
    }

</style>
</head>
<body style="background-color:#D7EAE8;">
<br><br>
    <%
        String name=(String)session.getAttribute("userid");
        out.print("Hello User "+name);
    %>
<center>
    <br>
    <div class="container">
        <h1>ClickUs Book System</h1>
        <%
        String userid = (String)session.getAttribute("userid");
        try{
          Class.forName("org.postgresql.Driver");
          String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
          String user = "zaiaryvqbpwwcb";
          String pass = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";
          Connection conn = DriverManager.getConnection(dbURL, user, pass);

          Statement st = conn.createStatement();
          ResultSet rs;
          rs = st.executeQuery("select * from payment " );
        %>
       <br><br>
        <div style="overflow-x: auto;">
    <table id="booklist">
        <tr>
            <th>Book ID</th>
            <th>Picture</th>
            <th>Title</th>
            <th>Stock</th>
            <th>Author</th>
          </tr>
        <% while(rs.next()){ %>
        <tr>
            <td> <%= rs.getInt("payment_id") %></td>
            <td> <img src="<%=rs.getString("payment_receipt")%>" style="width:154px;height:152px;"></td>
            <td> <%= rs.getString("payment_date") %></td>
            <td> <%= rs.getInt("payment_time") %></td>
            <td> <%= rs.getString("payment_status") %></td>
        </tr>
        <% }
            } catch (Exception e) {
            e.printStackTrace();
            }
        %>
    </table>
        </div>
</center>
</body>
</html>