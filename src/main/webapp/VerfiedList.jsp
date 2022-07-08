<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden;">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white; padding-bottom:2em;">WELCOME</h3>
<a href="VerfiedList.jsp" class="btn2" style="display:block; font-size:13px;">PAYMENT VERIFICATION </a>
<a href="schedulelist.jsp" class="btn4" style="display:block; font-size:13px;">CLASS SCHEDULE</a>
<a href="AnnouncementList.jsp" class="btn5" style="display:block; font-size:13px;">ANNOUNCEMENT</a>
<a href="dashboardstaff.jsp" class="btn6" style="display:block; font-size:13px;">ACCOUNT</a>
<a href="StaffList.jsp" class="btn8" style="display:block; font-size:13px;">STAFF LIST</a>
<a href="StaffLogin.jsp" class="btn8" style="display:block; font-size:13px;">LOGOUT</a>

</div>



<sql:setDataSource var="ic" driver="org.postgresql.Driver"
                   url="jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0"
                   user = "zaiaryvqbpwwcb"
                   password="731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b"/>
<sql:query dataSource="${ic}" var="oc">
    SELECT row_number() over (order by payment_id) "rank",payment_id,payment_date,payment_status from payment where payment_status = 'Verified'
</sql:query>

 <table style="text-align: center;" >
            <tr>
                <th  style="width: 80px; height: 50px;">No.</th>
                <th  style="width:400px;">Payment ID</th>
                <th  style="width: 300px;">Payment_Date</th>
                <th  style="width: 450px;">Payment Status</th>

            </tr>
            <c:forEach var="payment" items="${oc.rows}">
                <tr>
                   <td>
                        <c:out value="${payment.rank}"/>
                    </td>
                     <td>
                        <c:out value="${payment.Payment_ID}"/>
                    </td>
                     <td>
                        <c:out value="${payment.Payment_Date}"/>
                    </td>
 					<td>
                         <c:out value="${payment.Payment_Status}"/>
                    </td>
 
                    
                    

                </tr>
            </c:forEach>
        </table>
        
        <a href=NotVerifiedList.jsp style="margin-left: 200px;">Unverified List</a>
</body>
<style>
td,th{border:1px solid;}
</style>
</html>