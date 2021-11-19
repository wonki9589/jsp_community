package user;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.junit.jupiter.api.Test;

class test1 {
	private Connection conn;
	 private PreparedStatement pstmt;
	 private ResultSet rs;
	@Test
	void test() {
		User user =new User();
		user.setUser_id(1);
		user.setPassword("999");
		user.setEmail("meme@naver.com");
		user.setCreate_date("20211118");
		user.setUsername("meme");
		user.setNicname("hhh");
		
		
		 try {
			 String dbURL =  "jdbc:mariadb://127.0.0.1:3306/community";
			 String dbID = "root";
			 String dbPassword = "mariadb";
			 Class.forName("org.mariadb.jdbc.Driver");  //db드라이버 
			 conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
			 
					 
		 } catch ( Exception e) {
			 e.printStackTrace();
		 }
		 
		int result = 0;
		assertTrue(result ==0);
	
	}

}
