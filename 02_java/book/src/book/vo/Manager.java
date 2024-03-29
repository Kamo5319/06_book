package book.vo;

import java.math.BigDecimal;;

/**
 * MANAGER 테이블과 동일하게 작성된 vo 클래스
 * @author KIMJIHU
 *
 */
public class Manager {
	
	private int managerSeq;
	private String managerId;
	private String name;
	private String password;
	private String regId;
	private String regDate;
	private String modId;
	private String modDate;
	
	public Manager() {
		super();
	}
	
	public int getManagerSeq() {
		return managerSeq;
	}
	public void setManagerSeq(int managerSeq) {
		this.managerSeq = managerSeq;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getModId() {
		return modId;
	}
	public void setModId(String modId) {
		this.modId = modId;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + managerSeq;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Manager other = (Manager) obj;
		if (managerSeq != other.managerSeq)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "관리자 [managerSeq=" + managerSeq + ", managerId=" + managerId + ", name=" + name + ", password="
				+ password + ", regId=" + regId + ", regDate=" + regDate + ", modId=" + modId + ", modDate=" + modDate
				+ "]";
	}
	
}
