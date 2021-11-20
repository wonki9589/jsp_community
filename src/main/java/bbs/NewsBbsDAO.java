//https://www.bootdey.com/snippets/view/projects-dashboard//
//bbs template 


package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class NewsBbsDAO {

	 private Connection conn;
		
	 private ResultSet rs;
	 
	 
	 public NewsBbsDAO() {
		 try {
			 String dbURL =  "jdbc:mariadb://127.0.0.1:3306/BBS";
			 String dbID = "root";
			 String dbPassword = "mariadb";
			 Class.forName("org.mariadb.jdbc.Driver");  //db드라이버 
			 conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
			 
					 
		 } catch ( Exception e) {
			 e.printStackTrace();
		 }
		 // 여기까지가 접속할수있게 해주는 부분
	 }
	 
	
	 
	 
}
