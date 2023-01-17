	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<title>Schedule</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css">
<style>
.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 30px rgba(0, 0, 0, 0.40);
    background-color: white;
}
.styled-table thead tr {
    background-color: #007c98;
    border-radius: 10px;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}


.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #008198;
}

tr:hover {
color: #5b0363;
font-weight: bold;}
.navbar {
padding-top:30px;
  overflow: hidden;
  background-color: #102e44;
}

.navbar a {
  float: right;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 16px 14px;
  text-decoration: none;
  background-color: #102e44;
  
}

.dropdown {
  float: right;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 16px 14px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: green;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
  background-color: white;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.notification .badge {
  position: absolute;
  top: 30px;
  right: 12px;
  padding: 5px 10px;
  border-radius: 50%;
  background-color: red;
  color: white;
}
</style></head>

<body>

<%  
 
Object id = session.getAttribute("participant_id");  

  
%>  


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden"> 
<img class="logo" alt="" src="IHijrahLogo.PNG"> 
<h3 style="text-align: center; color: white;">WELCOME</h3> 
<a href="Registration.jsp" class="btn2" style="display:block;padding:50px;">REGISTER COURSE</a> 
<a href="SchedulePartBaru.jsp" style="display:block;padding:50px;">CLASS SCHEDULE</a>  
<a href="PartAnnouncement.jsp" style="display:block;padding:50px;">ANNOUNCEMENT</a> 
<a href="AccountParticipantBARU.jsp" class="btn6" style="display:block;padding:50px;">ACCOUNT</a> 
<form name="action" method="post" style="background-color:#353c49; border: 0px; margin: 0px; padding:0px; ">
<input type="hidden" name="action" value="logout">
<a href="WelcomePage.jsp" class="btn8" style="display:block;padding:50px;">LOGOUT</a> </form> 
</div> 
<!-- SIDEBAR -->

<!-- TOPBAR -->      
<div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; ">
 <div class="navbar">

  	
</div>
 
 </div>
 <!-- TOPBAR -->   

<sql:setDataSource var="ic" driver="org.postgresql.Driver"
                   url="jdbc:postgresql://localhost:5432/postgres"
                   user = "postgres"
                   password="system"/>
<sql:query dataSource="${ic}" var="oc">
    SELECT row_number() over () "rank",schedule_date,schedule_time,schedule_description from schedule
</sql:query>


<c:set var = "ID" scope = "session" value = "<%=id%>"/>

<sql:query dataSource="${ic}" var="ab"> 
	SELECT DISTINCT REGISTRATION_STATUS,PARTICIPANT_ID FROM REGISTRATION where participant_id=? <sql:param value = "${ID}" /> limit 1
</sql:query> 


	<div class="container" style="margin: 20px 10px 0px 210px; background-color:white; height:460px; ">
	<p style=" font-size: 30px; margin-left: 690px; font-weight: bold;">SCHEDULE</p><br><br><br><br>
	
	<c:forEach var="approval" items="${ab.rows}"> 
<c:if test= "${approval.registration_status =='Approved'}">
	<table class="styled-table"  style="position: relative; right:-5px; width:99%">
    <thead>
        <tr>
            <th>No.</th>
            <th>Date</th>
            <th>Time</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
            <c:forEach var="result" items="${oc.rows}">
                <tr>
                    <td class="no">
                        <c:out value="${result.rank}"/>
                    </td>
                    <td class="date">
                        <c:out value="${result.schedule_date}"/>
                    </td>
                    <td class="time">
                        <c:out value="${result.schedule_time}"/>
                    </td>
                    <td class="description">
                        <c:out value="${result.schedule_description}"/>
                    </td>
                </tr>
            </c:forEach>
    </tbody>
</table>

</c:if>

<c:if test= "${approval.registration_status !='Approved'}">
<p style="background-color: red; text-align: center; font-weight: bold; font-size: 30px; border-radius: 25px;">Your announcement status has been blocked due to unregistered or rejected status</p>

</c:if>


</c:forEach> 
</div>	
</body>
</html>