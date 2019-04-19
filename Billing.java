package test.domain.billing;

public class Billing {
	private String cardno;
	private String cardtype;
	private String expiry;
	private String cvv;
	
	public Billing(String cn,String ct, String ed, String cv) {
		cardno = cn;
		cardtype = ct;
		expiry = ed;
		cvv = cv;
	}
	public String getCardNo() {
		return cardno;
	}
	public void setCardNo(String cn) {
		cardno = cn;
	}
	public String getCardType() {
		return cardtype;
	}
	public void setCardType(String ct) {
		cardtype = ct;
	}
	public String getExpiryDate() {
		return expiry;
	}
	public void setExpiryDate(String ed) { 
		expiry = ed;
	}
	public String getCVV() {
		return cvv;
	}
	public void setCVV(String cv) {
		cvv = cv;
	}
}
