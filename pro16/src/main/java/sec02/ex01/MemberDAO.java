package sec02.ex01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	public boolean overlappedID(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		
		try {
			String url = "jdbc:mysql://localhost:3306/crud";
			String user = "root";
			String password = "1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("sql 연결완료");
			
			String sql = "select count(*) as result from info where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			//값이 1개라 while을 사용하지 않음
			rs.next();
			
			System.out.println("result : " + result);
			System.out.println("id : " + id);
			//result값을 String 형태로 가져옴
			String resultValue = rs.getString("result");
			//resultValue의 값이 대소문자 관계없이 true이거나 1이면 true, 아니면 false를 저장
			result = "true".equalsIgnoreCase(resultValue) || "1".equals(resultValue);
	
			pstmt.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
		
	}
}
