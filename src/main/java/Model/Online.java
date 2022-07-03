package Model;

import Model.Payment;

public class Online extends Payment {
	private int Payment_ID;
	private String Bank_Name;
	
	public Online() {
		super();
		
	}
	
	public int getPayment_ID() {
		return Payment_ID;
	}
	public void setPayment_ID(int payment_ID) {
		Payment_ID = payment_ID;
	}
	public String getBank_Name() {
		return Bank_Name;
	}
	public void setBank_Name(String bank_Name) {
		Bank_Name = bank_Name;
	}


}
