package doseo.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import doseo.dao.MemberDao;
import doseo.dao.mybatis.mapper.MemberMapper;
import doseo.model.Member;


@Repository
public class MybatisMemberDao implements MemberDao{
	
	@Autowired
	private MemberMapper memberMapper;
	
	
	public Member getMember(String id) throws DataAccessException {
		return memberMapper.getMemberById(id);
	}
	
	public Member getMember(String id, String password) throws DataAccessException {
		return memberMapper.getMemberByIdAndPassword(id, password);
	}
	
	public List<String> getIdList() throws DataAccessException {
		return memberMapper.getIdList();
	}
	
	public void insertMember(Member member) throws DataAccessException {
		memberMapper.insertMember(member);
	}
	
	public void updateMember(Member member) throws DataAccessException {
		memberMapper.updateMember(member);
		if (member.getPassword() != null && member.getPassword().length() > 0) {
			memberMapper.updateMember(member);
		}
	}
	
	public int idCheck(String id) throws DataAccessException {
		return memberMapper.idCheck(id);
	}
}
