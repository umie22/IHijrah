package Note;
import java.sql.*;
import java.util.*;
import db.ConnectionManager;
public class NoteDAO
{
static Connection con = null;
static PreparedStatement ps = null;
static Statement stmt = null;
static ResultSet rs = null;
private int id;
private String subject, date, category, message;
//add ticket
public void addTicket(Ticket bean)
{
subject = bean.getSubject();
date = bean.getDate();
category = bean.getCategory();
message = bean.getMessage();
try {
//call getConnection() method
con = ConnectionManager.getConnection();
//3. create statement
ps = con.prepareStatement("INSERT INTO ticket(subject, date,category, message)VALUES(?,?,?,?)");
ps.setString(1, subject);
ps.setString(2, date);
ps.setString(3, category);
ps.setString(4, message);
//4. execute query
ps.executeUpdate();
System.out.println("Successfully inserted");
//5. close connection
con.close();
}catch(Exception e) {
e.printStackTrace();
}
}
public static List<Ticket> getAllTickets()
{
List<Ticket> tickets = new ArrayList<Ticket>();
try {
//callC getConnection() method
con = ConnectionManager.getConnection();
//3. create statement
stmt = con.createStatement();
String sql = "SELECT * FROM ticket ORDER BY id";
//4. execute query
rs = stmt.executeQuery(sql);
while(rs.next()) {
//process result
Ticket t = new Ticket();
t.setId(rs.getInt("id"));
t.setSubject(rs.getString("subject"));
t.setDate(rs.getString("date"));
t.setCategory(rs.getString("category"));
t.setMessage(rs.getString("message"));
tickets.add(t);
}
//5. close connection
con.close();
}catch(Exception e) {
e.printStackTrace();
}
return tickets;
}
//get ticket id
public static Ticket getTicketById(int id)
{
Ticket t = new Ticket();
try {
//call getConnection() method
con = ConnectionManager.getConnection();
//3. create statement
ps = con.prepareStatement("SELECT * FROM ticket where id=?");
ps.setInt(1,id);
//4. execute query
rs = ps.executeQuery();
if(rs.next())
{
t.setId(rs.getInt("id"));
t.setSubject(rs.getString("subject"));
t.setDate(rs.getString("date"));
t.setCategory(rs.getString("category"));
t.setMessage(rs.getString("message"));
}
//5. close connection
con.close();
}catch(Exception e) {
e.printStackTrace();
}
return t;
}
//delete ticket
public void deleteTicket(int id)
{
try {
//call getConnection() method
con = ConnectionManager.getConnection();
//3. create statement
ps = con.prepareStatement("DELETE FROM ticket WHERE id=?");
ps.setInt(1, id);
//4. execute query
ps.executeUpdate();
//5. close connection
con.close();
}catch(Exception e) {
e.printStackTrace();
}
}
public void updateTicket(Ticket bean)
{
id = bean.getId();
subject = bean.getSubject();
date = bean.getDate();
category = bean.getCategory();
message = bean.getMessage();
try {
//call getConnection() method
con = ConnectionManager.getConnection();
//3. create statement
ps = con.prepareStatement("UPDATE ticket SET subject=?, date=?, category=?, message=? WHERE id=?");
ps.setString(1, subject);
ps.setString(2, date);
ps.setString(3, category);
ps.setString(4, message);
ps.setInt(5, id);
//4. execute query
ps.executeUpdate();
System.out.println("Succesfully updated");
//5. close connection
con.close();
}catch(Exception e) {
e.printStackTrace();
}
}
}
