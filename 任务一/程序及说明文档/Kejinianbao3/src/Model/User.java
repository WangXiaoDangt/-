package Model;

public class User {
	private int id;
	private String leixing;//类型
	private String username; //用户名
	private String password; //密码
	private String platformtype; //平台类型
	private String platformname; //平台名称
	private String platformnum; //平台编号
	private String supportinstitution; //依托单位
	private String approvaltime; //批准年月
	private String approvalnum; //批准文号
	private String technicalfield; //技术领域
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getLeixing() {
		return leixing;
	}
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	public String getPlatformtype() {
		return platformtype;
	}
	public void setPlatformtype(String platformtype) {
		this.platformtype = platformtype;
	}
	public String getPlatformname() {
		return platformname;
	}
	public void setPlatformname(String platformname) {
		this.platformname = platformname;
	}
	public String getPlatformnum() {
		return platformnum;
	}
	public void setPlatformnum(String platformnum) {
		this.platformnum = platformnum;
	}
	public String getSupportinstitution() {
		return supportinstitution;
	}
	public void setSupportinstitution(String supportinstitution) {
		this.supportinstitution = supportinstitution;
	}
	public String getApprovaltime() {
		return approvaltime;
	}
	public void setApprovaltime(String approvaltime) {
		this.approvaltime = approvaltime;
	}
	public String getApprovalnum() {
		return approvalnum;
	}
	public void setApprovalnum(String approvalnum) {
		this.approvalnum = approvalnum;
	}
	public String getTechnicalfield() {
		return technicalfield;
	}
	public void setTechnicalfield(String technicalfield) {
		this.technicalfield = technicalfield;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}
