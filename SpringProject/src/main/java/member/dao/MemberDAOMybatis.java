package member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;

@Transactional
@Component("memberDAO")
public class MemberDAOMybatis implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	public MemberDTO isExistId(String id) {
		return sqlSession.selectOne("memberSQL.isExistId", id);
	}

	public List<ZipcodeDTO> getZipcodeList(Map<String, String> map) {
		return sqlSession.selectList("memberSQL.getZipcodeList", map);
	}

	@Override
	public void write(MemberDTO memberDTO) {
		 sqlSession.insert("memberSQL.write",memberDTO);
	}

	@Override
	public Map<String, String> login(Map<String, String> inMap) {
		return sqlSession.selectOne("memberSQL.login",inMap);
	}

	@Override
	public MemberDTO emailAut(String email) {
		return sqlSession.selectOne("memberSQL.emailAut",email);
	}

	@Override
	public void modify(Map<String, String> map) {
	    sqlSession.update("memberSQL.modify", map);
	}

	@Override
	public MemberDTO ModifyAfterMember(String hname) {
		return sqlSession.selectOne("memberSQL.ModifyAfterMember",hname);
	}

	@Override
	public MemberDTO repwd(Map<String, String> map) {
		return sqlSession.selectOne("memberSQL.repwd", map);
	}


	@Override
	public void emailAcceptAction(String emailaut) {
		sqlSession.update("memberSQL.insertKey", emailaut);
	}

	@Override
	public MemberDTO selectEmail(String email) {
		return sqlSession.selectOne("memberSQL.selectKey", email);
	}
}
