package Model;

public class User {
	private int id;
	private String leixing;//����
	private String username; //�û���
	private String password; //����
	private String platformtype; //ƽ̨����
	private String platformname; //ƽ̨����
	private String platformnum; //ƽ̨���
	private String supportinstitution; //���е�λ
	private String approvaltime; //��׼����
	private String approvalnum; //��׼�ĺ�
	private String technicalfield; //��������
	
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
