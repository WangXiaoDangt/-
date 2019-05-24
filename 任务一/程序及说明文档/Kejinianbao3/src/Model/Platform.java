package Model;
public class Platform {
    private int id;
	private String platformname; //ƽ̨����
	private String platformnum; //ƽ̨���
	private String approvaltime; //��׼����
	private String approvalnum; //��׼�ĺ�
	private String technicalfield; //��������
	private String platformlevel; //ƽ̨����
	private String cmbProvince; //��������
	private String cmbCity; //��������
	private String cmbArea; //��������
	private String organization; //ƽ̨��֯��̬
	private String construction; //��λ����
	private String jingjinji; //���򼽹���
	private String fuwuhangye1; //�������Ҫ���񾭼���ҵ1
	private String fuwuhangye11; //�������Ҫ���񾭼���ҵ2
	private String fuwuhangye111; //�������Ҫ���񾭼���ҵ3
	private String suoshuxk1; //��������Ҫѧ��1
	private String suoshuxk11; //��������Ҫѧ��2
	private String suoshuxk111; //��������Ҫѧ��3
	private String supportinstitution; //���е�λ
	private String creditcode; //���е�λ��֯��������
	private String legalpersonname; //���е�λ���˴�������
	private String legalpersonphone; //���е�λ���˴���칫�绰
	private String supporttype; //���е�λ���� 
	private String unitconstruction; //������λ
	private String directorname; //ƽ̨����������
	private String directorsex; //ƽ̨�����Ա�
	private String directorbirth; //ƽ̨���γ�������
	private String directortitle; //ƽ̨����ְ��
	private String directormajor; //ƽ̨������ѧרҵ
	private String directoreedubg; //ƽ̨����ѧ��
	private String directordegree; //ƽ̨����ѧλ
	private String directortel; //ƽ̨���ε绰
	private String directorphone; //ƽ̨�����ֻ�
	private String directormail; //ƽ̨����e-mail;
	private String webname; //ƽ̨��վ����
	private String url; //��ַ
	private String address; //ƽ̨ͨѶ��ַ
	private String postcode; //�ʱ�
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
		
	public String getCmbProvince() {
		return cmbProvince;
	}
	public void setCmbProvince(String cmbProvince) {
		this.cmbProvince = cmbProvince;
	}
	public String getCmbCity() {
		return cmbCity;
	}
	public void setCmbCity(String cmbCity) {
		this.cmbCity = cmbCity;
	}
	public String getCmbArea() {
		return cmbArea;
	}
	public void setCmbArea(String cmbArea) {
		this.cmbArea = cmbArea;
	}
	public String getDirectortel() {
		return directortel;
	}
	public void setDirectortel(String directortel) {
		this.directortel = directortel;
	}
	public String getTechnicalfield() {
		return technicalfield;
	}
	public void setTechnicalfield(String technicalfield) {
		this.technicalfield = technicalfield;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getConstruction() {
		return construction;
	}
	public void setConstruction(String construction) {
		this.construction = construction;
	}
	public String getJingjinji() {
		return jingjinji;
	}
	public void setJingjinji(String jingjinji) {
		this.jingjinji = jingjinji;
	}
	
	public String getFuwuhangye1() {
		return fuwuhangye1;
	}
	public void setFuwuhangye1(String fuwuhangye1) {
		this.fuwuhangye1 = fuwuhangye1;
	}
	public String getFuwuhangye11() {
		return fuwuhangye11;
	}
	public void setFuwuhangye11(String fuwuhangye11) {
		this.fuwuhangye11 = fuwuhangye11;
	}
	public String getFuwuhangye111() {
		return fuwuhangye111;
	}
	public void setFuwuhangye111(String fuwuhangye111) {
		this.fuwuhangye111 = fuwuhangye111;
	}
	public String getSuoshuxk1() {
		return suoshuxk1;
	}
	public void setSuoshuxk1(String suoshuxk1) {
		this.suoshuxk1 = suoshuxk1;
	}
	public String getSuoshuxk11() {
		return suoshuxk11;
	}
	public void setSuoshuxk11(String suoshuxk11) {
		this.suoshuxk11 = suoshuxk11;
	}
	public String getSuoshuxk111() {
		return suoshuxk111;
	}
	public void setSuoshuxk111(String suoshuxk111) {
		this.suoshuxk111 = suoshuxk111;
	}
	public String getSupportinstitution() {
		return supportinstitution;
	}
	public void setSupportinstitution(String supportinstitution) {
		this.supportinstitution = supportinstitution;
	}
	public String getCreditcode() {
		return creditcode;
	}
	public void setCreditcode(String creditcode) {
		this.creditcode = creditcode;
	}
	public String getLegalpersonname() {
		return legalpersonname;
	}
	public void setLegalpersonname(String legalpersonname) {
		this.legalpersonname = legalpersonname;
	}
	public String getLegalpersonphone() {
		return legalpersonphone;
	}
	public void setLegalpersonphone(String legalpersonphone) {
		this.legalpersonphone = legalpersonphone;
	}
	public String getSupporttype() {
		return supporttype;
	}
	public void setSupporttype(String supporttype) {
		this.supporttype = supporttype;
	}
	
	public String getPlatformlevel() {
		return platformlevel;
	}
	public void setPlatformlevel(String platformlevel) {
		this.platformlevel = platformlevel;
	}
	public String getUnitconstruction() {
		return unitconstruction;
	}
	public void setUnitconstruction(String unitconstruction) {
		this.unitconstruction = unitconstruction;
	}
	public String getDirectorname() {
		return directorname;
	}
	public void setDirectorname(String directorname) {
		this.directorname = directorname;
	}
	public String getDirectorsex() {
		return directorsex;
	}
	public void setDirectorsex(String directorsex) {
		this.directorsex = directorsex;
	}
	public String getDirectorbirth() {
		return directorbirth;
	}
	public void setDirectorbirth(String directorbirth) {
		this.directorbirth = directorbirth;
	}
	public String getDirectortitle() {
		return directortitle;
	}
	public void setDirectortitle(String directortitle) {
		this.directortitle = directortitle;
	}
	public String getDirectormajor() {
		return directormajor;
	}
	public void setDirectormajor(String directormajor) {
		this.directormajor = directormajor;
	}
	
	public String getDirectordegree() {
		return directordegree;
	}
	public void setDirectordegree(String directordegree) {
		this.directordegree = directordegree;
	}
	public String getDirectoreedubg() {
		return directoreedubg;
	}
	public void setDirectoreedubg(String directoreedubg) {
		this.directoreedubg = directoreedubg;
	}
	public String getDirectorphone() {
		return directorphone;
	}
	public void setDirectorphone(String directorphone) {
		this.directorphone = directorphone;
	}
	public String getDirectormail() {
		return directormail;
	}
	public void setDirectormail(String directormail) {
		this.directormail = directormail;
	}
	public String getWebname() {
		return webname;
	}
	public void setWebname(String webname) {
		this.webname = webname;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

}
