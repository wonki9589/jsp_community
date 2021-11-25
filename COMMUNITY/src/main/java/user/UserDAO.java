package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	
 private Connection conn;
 private PreparedStatement pstmt;
 private ResultSet rs;
 
 
 public UserDAO() {
	 try {
		 String dbURL =  "jdbc:mariadb://127.0.0.1:3306/community";
		 String dbID = "root";
		 String dbPassword = "mariadb";
		 Class.forName("org.mariadb.jdbc.Driver");  //db드라이버 
		 conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		 
				 
	 } catch ( Exception e) {
		 e.printStackTrace();
		 System.out.println("dsds");
	 }
	 // 여기까지가 접속할수있게 해주는 부분
 }
 
 
 public int join(User user) {
	 String SQL = "INSERT INTO User VALUES(?,?,?,?,?,?,?)";
	 try {
		 pstmt = conn.prepareStatement(SQL);
		 pstmt.setInt(1, user.getUser_id());
		 pstmt.setString(2, user.getPassword());
		 pstmt.setString(3, user.getUserid());
		 pstmt.setString(4, user.getEmail());
		 pstmt.setString(5, user.getNicname());
		 pstmt.setString(6, user.getCreate_date());
		 pstmt.setString(7, user.getUserid());
		
	
		 
		 return pstmt.executeUpdate();
		 
	 } catch(Exception e) {
		 e.printStackTrace();
	 } 
	 return -1 ; // database error
 }
 
 public int login(String userid , String password) {
	 String SQL = "SELECT password FROM User WHERE userid = ?";
	 try {
		 pstmt =  conn.prepareStatement(SQL);
		 pstmt.setString(1, userid);
		 rs = pstmt.executeQuery();
		 
		 if ( rs.next()) {
			 if(rs.getString(1).equals(password)) 
				 return 1; // 로그인성공
			 else
				 return 0; // 비밀번호 불일치
			 }
		 
		 
		 return -1 ;  // 아이디가없음
		 }
	 catch ( Exception e) {
		 e.printStackTrace();
	 } return -2 ; // 데이터베이스 종
 }
 
}



