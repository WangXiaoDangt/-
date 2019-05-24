package Model;
public class Platform {
    private int id;
	private String platformname; //平台名称
	private String platformnum; //平台编号
	private String approvaltime; //批准年月
	private String approvalnum; //批准文号
	private String technicalfield; //技术领域
	private String platformlevel; //平台级别
	private String cmbProvince; //所在市县
	private String cmbCity; //所在市县
	private String cmbArea; //所在市县
	private String organization; //平台组织形态
	private String construction; //单位建设
	private String jingjinji; //京津冀共建
	private String fuwuhangye1; //服务的主要国民经济行业1
	private String fuwuhangye11; //服务的主要国民经济行业2
	private String fuwuhangye111; //服务的主要国民经济行业3
	private String suoshuxk1; //所属的主要学科1
	private String suoshuxk11; //所属的主要学科2
	private String suoshuxk111; //所属的主要学科3
	private String supportinstitution; //依托单位
	private String creditcode; //依托单位组织机构代码
	private String legalpersonname; //依托单位法人代表姓名
	private String legalpersonphone; //依托单位法人代表办公电话
	private String supporttype; //依托单位类型 
	private String unitconstruction; //共建单位
	private String directorname; //平台主任姓名；
	private String directorsex; //平台主任性别
	private String directorbirth; //平台主任出生年月
	private String directortitle; //平台主任职称
	private String directormajor; //平台主任所学专业
	private String directoreedubg; //平台主任学历
	private String directordegree; //平台主任学位
	private String directortel; //平台主任电话
	private String directorphone; //平台主任手机
	private String directormail; //平台主任e-mail;
	private String webname; //平台网站名称
	private String url; //网址
	private String address; //平台通讯地址
	private String postcode; //邮编
	
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
