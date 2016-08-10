package member.dao;

import java.util.List;
import java.util.Map;

import email.bean.Email;
import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;

public interface MemberDAO {
	public MemberDTO isExistId(String id);
	public List<ZipcodeDTO> getZipcodeList(Map<String, String> map);
	public void write(MemberDTO memberDTO);
	public Map<String, String> login(Map<String, String> inMap);
	public MemberDTO emailAut(String id);
	public void modify(Map<String, String> map);
	public MemberDTO ModifyAfterMember(String string);
	public MemberDTO repwd(Map<String, String> map);
	public void emailAcceptAction(String emailaut);
	public MemberDTO selectEmail(String email);
}
