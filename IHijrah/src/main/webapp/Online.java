package main.webapp;

public class Online extends Payment{
	private int Payment_ID;
	private String Bank_Name;
	public Online(int payment_ID, String payment_Date, String payment_Time, String payment_Status, int payment_ID2,
			String bank_Name) {
		super(payment_ID, payment_Date, payment_Time, payment_Status);
		Payment_ID = payment_ID2;
		Bank_Name = bank_Name;
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
