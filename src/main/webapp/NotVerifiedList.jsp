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
<sql:setDataSource var="ic" driver="org.postgresql.Driver"
                   url="jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0"
                   user = "zaiaryvqbpwwcb"
                   password="731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b"/>
<sql:query dataSource="${ic}" var="oc">
    SELECT row_number() over (order by payment_id) "rank",payment_id,payment_date,payment_status from payment where payment_status = 'Not Verified'
</sql:query>

 <table style="text-align: center;" >
            <tr>
                <th  style="width: 80px; height: 50px;">No.</th>
                <th  style="width:400px;">Payment ID</th>
                <th  style="width: 300px;">Payment_Date</th>
                <th  style="width: 450px;">Payment Status</th>
                <th  style="width: 450px;">Action</th>

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
                     <td>
                     <form action= "" method= "post">
                   <input type="hidden" name="action" value="verify">
                     <button formaction="verifyParticipant?id=${payment.Payment_ID}">Verify</button>                     
                     </form>
                    </td>
                    
                    

                </tr>
            </c:forEach>
        </table>
</body>
<style>
td,th{border:1px solid;}
</style>
</html>