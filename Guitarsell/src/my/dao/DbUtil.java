package my.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbUtil {
	
	static String url="jdbc:mariadb://localhost:3306/guitar";
	static String userName="root";
	static String password="123456";
	static Connection conn=null;
	public static Connection getConnection(){
		
		try{
			//连接数据�?
			Class.forName("org.mariadb.jdbc.Driver");	
			conn=DriverManager.getConnection(url,userName,password);
		}catch(ClassNotFoundException e){
			
		}		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}

}
