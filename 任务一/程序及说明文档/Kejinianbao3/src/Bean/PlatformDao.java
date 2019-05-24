package Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Platform;
import Util.DBUtil;

public class PlatformDao {
	public void add(Platform platform){
		Connection connection=DBUtil.getConnection();
		String sql = "";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {	
			sql = "insert into t_platform (platformname,platformnum,approvaltime,approvalnum,technicalfield,platformlevel,cmbProvince,cmbCity,cmbArea,organization,construction,jingjinji,fuwuhangye1,fuwuhangye11,fuwuhangye111,suoshuxk1,suoshuxk11,suoshuxk111,supportinstitution,creditcode,legalpersonname,legalpersonphone,supporttype,unitconstruction,directorname,directorsex,directorbirth,directortitle,directormajor,directoreedubg,directordegree,directortel,directorphone,directormail,webname,url,address,postcode) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,platform.getPlatformname());
			preparedStatement.setString(2,platform.getPlatformnum());
			preparedStatement.setString(3,platform.getApprovaltime());
			preparedStatement.setString(4,platform.getApprovalnum());
			preparedStatement.setString(5,platform.getTechnicalfield());
			preparedStatement.setString(6,platform.getPlatformlevel());
			preparedStatement.setString(7,platform.getCmbProvince());
			preparedStatement.setString(8,platform.getCmbCity());
			preparedStatement.setString(9,platform.getCmbArea());
			preparedStatement.setString(10,platform.getOrganization());
			preparedStatement.setString(11,platform.getConstruction());
			preparedStatement.setString(12,platform.getJingjinji());
			preparedStatement.setString(13,platform.getFuwuhangye1());
			preparedStatement.setString(14,platform.getFuwuhangye11());
			preparedStatement.setString(15,platform.getFuwuhangye111());
			preparedStatement.setString(16,platform.getSuoshuxk1());
			preparedStatement.setString(17,platform.getSuoshuxk11());
			preparedStatement.setString(18,platform.getSuoshuxk111());
			preparedStatement.setString(19,platform.getSupportinstitution());
			preparedStatement.setString(20,platform.getCreditcode());
			preparedStatement.setString(21,platform.getLegalpersonname());
			preparedStatement.setString(22,platform.getLegalpersonphone());
			preparedStatement.setString(23,platform.getSupporttype());
			preparedStatement.setString(24,platform.getUnitconstruction());
			preparedStatement.setString(25,platform.getDirectorname());
			preparedStatement.setString(26,platform.getDirectorsex());
			preparedStatement.setString(27,platform.getDirectorbirth());
			preparedStatement.setString(28,platform.getDirectortitle());
			preparedStatement.setString(29,platform.getDirectormajor());
			preparedStatement.setString(30,platform.getDirectoreedubg());
			preparedStatement.setString(31,platform.getDirectordegree());
			preparedStatement.setString(32,platform.getDirectortel());
			preparedStatement.setString(33,platform.getDirectorphone());
			preparedStatement.setString(34,platform.getDirectormail());
			preparedStatement.setString(35,platform.getWebname());
			preparedStatement.setString(36,platform.getUrl());
			preparedStatement.setString(37,platform.getAddress());
			preparedStatement.setString(38,platform.getPostcode());
			preparedStatement.executeUpdate();	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
	}
	public List<Platform> loadzonghe(String[] sqls){
		Connection connection = DBUtil.getConnection();
		String sql="";
		for(int i=0;i<sqls.length;i++){
			sql+=sqls[i];	
		}
		//System.out.println(sql);
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int i=1;
		List<Platform> platforms = new ArrayList<Platform>();
		Platform platform = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				platform = new Platform();
				platform.setId(resultSet.getInt("id"));
				platform.setPlatformname(resultSet.getString("platformname"));
				platform.setPlatformnum(resultSet.getString("platformnum"));
				platform.setApprovaltime(resultSet.getString("approvaltime"));
				platform.setApprovalnum(resultSet.getString("approvalnum"));
				platform.setTechnicalfield(resultSet.getString("technicalfield"));
				platform.setPlatformlevel(resultSet.getString("platformlevel"));
				platform.setCmbProvince(resultSet.getString("cmbProvince"));
				platform.setCmbCity(resultSet.getString("cmbCity"));
				platform.setCmbArea(resultSet.getString("cmbCity"));
				platform.setOrganization(resultSet.getString("organization"));
				platform.setConstruction(resultSet.getString("construction"));
				platform.setJingjinji(resultSet.getString("jingjinji"));
				platform.setFuwuhangye1(resultSet.getString("fuwuhangye1"));
				platform.setFuwuhangye11(resultSet.getString("fuwuhangye11"));
				platform.setFuwuhangye111(resultSet.getString("fuwuhangye111"));
				platform.setSuoshuxk1(resultSet.getString("suoshuxk1"));
				platform.setSuoshuxk11(resultSet.getString("suoshuxk11"));
				platform.setSuoshuxk111(resultSet.getString("suoshuxk111"));
				platform.setSupportinstitution(resultSet.getString("supportinstitution"));
				platform.setCreditcode(resultSet.getString("creditcode"));
				platform.setLegalpersonname(resultSet.getString("legalpersonname"));
				platform.setLegalpersonphone(resultSet.getString("legalpersonphone"));
				platform.setSupporttype(resultSet.getString("supporttype"));
				platform.setUnitconstruction(resultSet.getString("unitconstruction"));
				platform.setDirectorname(resultSet.getString("directorname"));
				platform.setDirectorsex(resultSet.getString("directorsex"));
				platform.setDirectorbirth(resultSet.getString("directorbirth"));
				platform.setDirectortitle(resultSet.getString("directortitle"));
				platform.setDirectormajor(resultSet.getString("directormajor"));
				platform.setDirectoreedubg(resultSet.getString("directoreedubg"));
				platform.setDirectordegree(resultSet.getString("directordegree"));
				platform.setDirectortel(resultSet.getString("directortel"));
				platform.setDirectorphone(resultSet.getString("directorphone"));
				platform.setDirectormail(resultSet.getString("directormail"));
				platform.setWebname(resultSet.getString("webname"));
				platform.setUrl(resultSet.getString("url"));
				platform.setAddress(resultSet.getString("address"));
				platform.setPostcode(resultSet.getString("postcode"));
				platforms.add(platform);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  platforms;
	}

}
