package com.board.example.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.example.dto.MemberDTO;

//현재 클래스를 스프링에서 관리하는 dao bean으로 설정
@Repository
public class MemberDAOImpl implements MemberDAO {
  //mybatis의 SqlSession 객체를 스프링에서 주입시킴
  //의존관계 주입 느슨한 결합, 제어의 역전
  //@Inject 어노테이션이 있어 sqlSession은 null상태가 아닌 외부에서 객체를 주입받는 형태가 된다.
  @Inject
  SqlSession sqlSession;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}
	
	@Override
	public MemberDTO viewMember(String userid) throws Exception {
		return sqlSession.selectOne("member.viewMember", userid);
	}
	
	@Override
	public void insertMember(MemberDTO dto) throws Exception {
		sqlSession.insert("member.insertMember", dto);
		
	}
	
	@Override
	public void updateMember(MemberDTO dto) throws Exception {
		sqlSession.update("member.updateMember", dto);
		
	}
	
	@Override
	public void deleteMember(String userid) throws Exception {
		sqlSession.delete("member.deleteMember", userid);
		
	}
	
	@Override
	public void countMember() throws Exception {
		
		
	}
	
	@Override
	public MemberDTO loginMember(String userid, String password) throws Exception {
		MemberDTO dto = new MemberDTO();
		Map<String, String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("password", password);
		dto = sqlSession.selectOne("member.checkPw", map);
		return dto;
	}
  
}