package Model;

import java.sql.Date;
import java.sql.Time;

public class Payment {
	
String Payment_ID;
Time Payment_Date;
Date Payment_Time;
String Payment_Status;
public String getPayment_ID() {
	return Payment_ID;
}
public void setPayment_ID(String payment_ID) {
	Payment_ID = payment_ID;
}
public Time getPayment_Date() {
	return Payment_Date;
}
public void setPayment_Date(Time payment_Date) {
	Payment_Date = payment_Date;
}
public Date getPayment_Time() {
	return Payment_Time;
}
public void setPayment_Time(Date payment_Time) {
	Payment_Time = payment_Time;
}
public String getPayment_Status() {
	return Payment_Status;
}
public void setPayment_Status(String payment_Status) {
	Payment_Status = payment_Status;
}


}
