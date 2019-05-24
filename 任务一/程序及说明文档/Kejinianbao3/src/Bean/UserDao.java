package Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.User;
import Util.DBUtil;
import Util.UserException;

public class UserDao {
	public void add (User user){
		Connection connection=DBUtil.getConnection();
		String sql = "select count(*) from t_user where username = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getUsername());
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				if (resultSet.getInt(1) > 0) {
					throw new UserException("用户名已存在！") ;
				}
			}
			
			sql = "insert into t_user(leixing,username,password,platformtype,platformname,platformnum,supportinstitution,approvaltime,approvalnum,technicalfield) values (?,?,?,?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getLeixing());
			preparedStatement.setString(2, user.getUsername());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getPlatformtype());
			preparedStatement.setString(5, user.getPlatformname());
			preparedStatement.setString(6, user.getPlatformnum());
			preparedStatement.setString(7, user.getSupportinstitution());
			preparedStatement.setString(8, user.getApprovaltime());
			preparedStatement.setString(9, user.getApprovalnum());
			preparedStatement.setString(10, user.getTechnicalfield());
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
	public User load(String username, String password) {
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_user  where username = ?";
		//System.out.print("1！");
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				//System.out.print("21！");
				user = new User();
				//System.out.print("4！");
				user.setId(resultSet.getInt("id"));
				//System.out.print("52！");
				user.setUsername(resultSet.getString("username"));
				//System.out.print("6！");
				user.setPassword(resultSet.getString("password"));
				//System.out.print("2！");
			}
			if (user == null) {
				throw new UserException("该用户不存在！");
			}
			if (!user.getPassword().equals(password)) {
				throw new UserException("密码不正确！");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  user;
	}

}
