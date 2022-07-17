package Model;

import javax.servlet.http.Part;

import com.google.protobuf.Timestamp;

import java.io.Serializable;
import java.sql.Time;

public class Payment implements Serializable {
	
	private static final long serialVersionUID = 1L;
	public String Payment_ID;
	public Timestamp Payment_Time;
	public String Payment_Status;
	public String Payment_Type;
	public 	String name;
	public Part file;
	
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Part getFile() {
		return file;
	}


	public void setFile(Part file) {
		this.file = file;
	}




	
	
	public String getPaymentType() {
		return Payment_Type;
	}


	public void setPaymentType(String payType) {
		this.Payment_Type = payType;
	}



	public String getPayID() {
		return Payment_ID;
	}


	public void setPayID(String payID) {
		this.Payment_ID = payID;
	}



	public Timestamp getPayTime() {
		return Payment_Time;
	}


	public void setPayTime(Timestamp payTime) {
		this.Payment_Time = payTime;
	}


	public String getPayStatus() {
		return Payment_Status;
	}


	public void setPayStatus(String payStatus) {
		this.Payment_Status = payStatus;
	}




	}