package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
	public  static  Connection getConnection(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String user = "NIANBAO";
		String password = "wxd06563344";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Connection connection = null;
		try {
			
			 connection = DriverManager.getConnection(url,user,password);
			 System.out.println("连接成功");
		} catch (SQLException e) {
			
			System.out.println("连接失败");
			e.printStackTrace();
		}
		return connection;
		
	}
	public static void close(Connection connection ) {
		try {
			if (connection != null) {
				connection.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void close(Statement statement ) {
		try {
			if (statement != null) {
				statement.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void close(ResultSet resultSet ) {
		try {
			if (resultSet != null) {
				resultSet.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	


}
