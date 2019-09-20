package book.vo;

import java.math.BigDecimal;

/**
 * CODE 테이블의 컬럼과 동일한 vo
 * @author KIMJIHU
 *
 */
public class Code {
	
	private int code;
	private int pCode;
	private String codeNm;
	private String codeVal;
	private String useYn;
	private String codeDesc;
	private int sortOrder;
	private String regId;
	private String regDate;
	private String modId;
	private String modDate;
	
	public Code() {
		super();
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getpCode() {
		return pCode;
	}
	public void setpCode(int pCode) {
		this.pCode = pCode;
	}
	public String getCodeNm() {
		return codeNm;
	}
	public void setCodeNm(String codeNm) {
		this.codeNm = codeNm;
	}
	public String getCodeVal() {
		return codeVal;
	}
	public void setCodeVal(String codeVal) {
		this.codeVal = codeVal;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	public String getCodeDesc() {
		return codeDesc;
	}
	public void setCodeDesc(String codeDesc) {
		this.codeDesc = codeDesc;
	}
	public int getSortOrder() {
		return sortOrder;
	}
	public void setSortOrder(int sortOrder) {
		this.sortOrder = sortOrder;
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
		result = prime * result + code;
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
		Code other = (Code) obj;
		if (code != other.code)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "번호 [code=" + code + ", pCode=" + pCode + ", codeNm=" + codeNm + ", codeVal=" + codeVal + ", useYn="
				+ useYn + ", codeDesc=" + codeDesc + ", sortOrder=" + sortOrder + ", regId=" + regId + ", regDate="
				+ regDate + ", modId=" + modId + ", modDate=" + modDate + "]";
	}
	
}
