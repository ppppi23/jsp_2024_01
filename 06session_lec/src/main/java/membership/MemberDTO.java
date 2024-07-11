package membership;

import java.util.Date;

public class MemberDTO {
	
	private String id;
	private String pw;
	private String name;
	private Date regidate;
	
	// getter
	public String getId() {
		return this.id;
	}
	public String getPw() {
		return this.pw;
	}
	public String getName() {
		return this.name;
	}
	public Date getRegidate() {
		return this.regidate;
	}
	
	// setter
	public void setId(String id) {
		this.id = id;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}

}



