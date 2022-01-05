package com.board.example.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.example.dao.MemberDAO;
import com.board.example.dto.MemberDTO;

//현재 클래스를 스프링에서 관리하는 service bean으로 설정
@Service
public class MemberServiceImpl implements MemberService {
    //dao 인스턴스를 주입시킴
    @Inject
    MemberDAO memberDao;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	@Override
	public MemberDTO viewMember(String userid) throws Exception {
		return memberDao.viewMember(userid);
	}

	@Override
	public void insertMember(MemberDTO dto) throws Exception {
		memberDao.insertMember(dto);
	}

	@Override
	public void updateMember(MemberDTO dto) throws Exception {
		memberDao.updateMember(dto);
	}

	@Override
	public void deleteMember(String userid) throws Exception {
		memberDao.deleteMember(userid);
	}

	@Override
	public void countMember() throws Exception {
		memberDao.countMember();
	}

	@Override
	public MemberDTO loginMember(String userid, String password) throws Exception {
		return memberDao.loginMember(userid, password);
	}
    
    

}