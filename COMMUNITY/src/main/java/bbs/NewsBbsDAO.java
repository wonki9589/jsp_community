//https://www.bootdey.com/snippets/view/projects-dashboard//
//bbs template 


package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import user.User;

public class NewsBbsDAO {

	 private Connection conn;
		
	 private ResultSet rs;
	 
	 
	 public NewsBbsDAO() {
		 try {
			 String dbURL =  "jdbc:mariadb://127.0.0.1:3306/community";
			 String dbID = "root";
			 String dbPassword = "mariadb";
			 Class.forName("org.mariadb.jdbc.Driver");  //db드라이버 
			 conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
			 
					 
		 } catch ( Exception e) {
			 e.printStackTrace();
		 }
		 // 여기까지가 접속할수있게 해주는 부분
	 }
	 
	 public String getDate() {
		 String SQL = "select now()";
		 try {
			 PreparedStatement pstmt = conn.prepareStatement(SQL);
			 rs = pstmt.executeQuery();
			 
			 if(rs.next()) {
				 return rs.getString(1);
			 }
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return "";
		 }
	 
	 
	 
	 
	 public int getNext() {
		 String SQL  = "select post_id from Post order by post_id DESC";
		 try {
			 PreparedStatement pstmt = conn.prepareStatement(SQL);
			 rs = pstmt.executeQuery();
			 if(rs.next()) {
				 return rs.getInt(1) + 1;
			 }
			 return 1;
		 }catch (Exception e) {
			 e.printStackTrace();
		 } return -1;
	 }
	 
	 public int write(int Category_id , String title , String content, String USER_ID) {
		 String SQL  = "insert into Post values (?,?,?,?,?,?,?,?,?)";
		 try {
			 PreparedStatement pstmt = conn.prepareStatement(SQL);
			 pstmt.setInt(1, getNext());
			 pstmt.setString(2, title);
			 pstmt.setString(3, content);
			 pstmt.setString(4, getDate());
			 pstmt.setString(5, getDate());
			 pstmt.setInt(6, 0);
//		수정날짜 . 추천수 안넣음
			
			 pstmt.setString(7, USER_ID );
			 pstmt.setInt(8, Category_id);
			 pstmt.setInt(9, 1);
			 
			 
			 return pstmt.executeUpdate();
			 
		
	 } catch(Exception e) {
		 e.printStackTrace();
		System.out.println("글쓰기 실패했음");
	 }  return -1;
	 }
	 
	 
	 
	 public ArrayList<NewsBbs> getList(int pageNumber){
	 String SQL  = "select * from Post where post_id < ? and post_available = 1 order by post_id desc limit 10";
	 ArrayList<NewsBbs> list = new ArrayList<NewsBbs>();
	 
	 
	 try {
		 PreparedStatement pstmt = conn.prepareStatement(SQL);
		 pstmt.setInt(1, getNext()-(pageNumber - 1) * 10);
		 rs = pstmt.executeQuery();
		 while(rs.next()) {
			 NewsBbs Newsbbs = new NewsBbs();
			 Newsbbs.setPost_id(rs.getInt(1));
			 Newsbbs.setTitle(rs.getString(2));
			 Newsbbs.setContent(rs.getString(3));
			 Newsbbs.setCreate_date(rs.getString(4));
			 Newsbbs.setModified_date(rs.getString(5));
			 Newsbbs.setRecommend_num(rs.getInt(6));
			 Newsbbs.setUSER_ID(rs.getString(7));
			 Newsbbs.setCategory_id(rs.getInt(8));
			 Newsbbs.setPost_available(rs.getInt(9));
			
			 
			 
			 list.add(Newsbbs);
		 }
	 }catch (Exception e) {
		 e.printStackTrace();
	 } return list;
 
 }
	 
	 public boolean nextPage(int pageNumber) {
		 String SQL  = "select * from Post where post_id < ? and post_available = 1";
		
		 try {
			 PreparedStatement pstmt = conn.prepareStatement(SQL);
			 pstmt.setInt(1, getNext()-(pageNumber - 1) * 10);
			 rs = pstmt.executeQuery();
			 if(rs.next()) {
				return true;
			 }
		 }catch (Exception e) {
			 e.printStackTrace();
		 } return false;
	 }
	 
	 
	 
	 public NewsBbs getBbs(int post_id) {
		 String SQL  = "select * from Post where post_id= ?";
	      
		 try {
			 PreparedStatement pstmt = conn.prepareStatement(SQL);
			 pstmt.setInt(1, post_id);
			 rs = pstmt.executeQuery();
			 while(rs.next()) {
				 NewsBbs Newsbbs = new NewsBbs();
				 Newsbbs.setPost_id(rs.getInt(1));
				 Newsbbs.setTitle(rs.getString(2));
				 Newsbbs.setContent(rs.getString(3));
				 Newsbbs.setCreate_date(rs.getString(4));
				 Newsbbs.setModified_date(rs.getString(5));
				 Newsbbs.setRecommend_num(rs.getInt(6));
				 Newsbbs.setUSER_ID(rs.getString(7));
				 Newsbbs.setCategory_id(rs.getInt(8));
				 Newsbbs.setPost_available(rs.getInt(9));
				 return Newsbbs;
			 }
		 }catch (Exception e) {
			 e.printStackTrace();
		 }
		 return null;
	 }
}
