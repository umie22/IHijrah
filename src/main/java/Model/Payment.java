package Model;

import javax.servlet.http.Part;
import java.io.Serializable;
import java.sql.Time;

public class Payment implements Serializable {
	
	private static final long serialVersionUID = 1L;
	public String payID;
	public String payDate;
	public Time payTime;
	public String payStatus;




	public String getPayID() {
		return payID;
	}


	public void setPayID(String payID) {
		this.payID = payID;
	}


	public String getPayDate() {
		return payDate;
	}


	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}


	public Time getPayTime() {
		return payTime;
	}


	public void setPayTime(Time payTime) {
		this.payTime = payTime;
	}


	public String getPayStatus() {
		return payStatus;
	}


	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}




	}