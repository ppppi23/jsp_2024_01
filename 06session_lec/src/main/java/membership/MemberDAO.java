package membership;

import common.DBConnPool;

public class MemberDAO extends DBConnPool{
	
	public MemberDAO() { 
		// super();
	}
	
	// parameter 로 전달된 id 와 pw 와 일치하는 회원 정보 가져오기
	public MemberDTO getMemberDTO(String id, String pw) {
		MemberDTO dto = new MemberDTO();
		String sql = "SELECT * FROM MEMBER WHERE id = ? AND pw = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getDate("regidate"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

}




