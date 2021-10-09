package doseo.dao.mybatis.mapper;

import java.util.List;

import doseo.model.Member;

public interface MemberMapper {

	Member getMemberById(String id);
	
	Member getMemberByIdAndPassword(String id, String password);
	
	List<String> getIdList();
	
	void updateMember(Member member); 
	
	void insertMember(Member member);
	
	int idCheck(String id);
	
}
