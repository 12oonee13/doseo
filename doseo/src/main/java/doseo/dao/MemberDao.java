package doseo.dao;

import java.util.List;
import org.springframework.dao.DataAccessException;

import doseo.model.Member;

public interface MemberDao {
	
		Member getMember(String id) throws DataAccessException;
		
		Member getMember(String id, String password) throws DataAccessException;
		
		void insertMember(Member member) throws DataAccessException;
		
		void updateMember(Member member) throws DataAccessException;
		
		List<String> getIdList() throws DataAccessException;
		
		//아이디 중복 체크
		int idCheck(String id) throws DataAccessException;
		
	}
