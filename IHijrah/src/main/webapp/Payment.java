package main.webapp;

public class Payment {
private int Payment_ID;
private String Payment_Date;
private String Payment_Time;
private String Payment_Status;
public Payment(int payment_ID, String payment_Date, String payment_Time, String payment_Status) {
	super();
	Payment_ID = payment_ID;
	Payment_Date = payment_Date;
	Payment_Time = payment_Time;
	Payment_Status = payment_Status;
}
public int getPayment_ID() {
	return Payment_ID;
}
public void setPayment_ID(int payment_ID) {
	Payment_ID = payment_ID;
}
public String getPayment_Date() {
	return Payment_Date;
}
public void setPayment_Date(String payment_Date) {
	Payment_Date = payment_Date;
}
public String getPayment_Time() {
	return Payment_Time;
}
public void setPayment_Time(String payment_Time) {
	Payment_Time = payment_Time;
}
public String getPayment_Status() {
	return Payment_Status;
}
public void setPayment_Status(String payment_Status) {
	Payment_Status = payment_Status;
}
}