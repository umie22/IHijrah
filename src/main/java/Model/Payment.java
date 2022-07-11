package Model;

import javax.servlet.http.Part;
import java.io.Serializable;

public class Payment implements Serializable {
	
	private static final long serialVersionUID = 1L;
	public String payID;
	public String payDate;
	public String payTime;
	public String payStatus;
	public Part payReceipt;


	public Payment(String payID, String payDate, String payTime, String payStatus, Part payReceipt) {
	
	}


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


	public String getPayTime() {
		return payTime;
	}


	public void setPayTime(String payTime) {
		this.payTime = payTime;
	}


	public String getPayStatus() {
		return payStatus;
	}


	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}


	public Part getPayReceipt() {
		return payReceipt;
	}


	public void setPayReceipt(Part payReceipt) {
		this.payReceipt = payReceipt;
	}


	}