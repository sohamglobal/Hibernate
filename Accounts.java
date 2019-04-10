package myentities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="accounts")
public class Accounts 
{

	@Id
	@Column (name="accno")
	private int accno;
	
	@Column (name="accnm")
	private String accnm;
	
	@Column (name="acctype")
	private String acctype;
	
	@Column (name="balance")
	private double balance;

	public Accounts()
	{
		
	}

	
	public int getAccno() {
		return accno;
	}
	
	public void setAccno(int accno) {
		this.accno = accno;
	}

	public String getAccnm() {
		return accnm;
	}

	public void setAccnm(String accnm) {
		this.accnm = accnm;
	}

	public String getAcctype() {
		return acctype;
	}

	public void setAcctype(String acctype) {
		this.acctype = acctype;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	
	
}
