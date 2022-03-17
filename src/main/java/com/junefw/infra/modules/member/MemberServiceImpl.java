package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

	/* ****************테스트**************** */
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {  //회원리스트테스트
		return dao.selectList(vo);
	}

	@Override
	public int insert(Member dto) throws Exception {   //회원등록테스트
		return dao.insert(dto);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception { //회원뷰테스트
		return dao.selectOne(vo);
	}

	@Override
	public int update(Member dto) throws Exception {  //회원수정테스트
		return dao.update(dto);
	}
	/* ****************두리안 어드민**************** */

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {   //회원검색
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Member> memberList(MemberVo vo) throws Exception { //회원리스트
		return dao.memberList(vo);
	}

	@Override
	public Member memberViewAdmin(MemberVo vo) throws Exception { //회원뷰
		return dao.memberViewAdmin(vo);
	}

	@Override
	public int insertMemberAdmin(Member dto) throws Exception {  //회원등록
		return dao.insertMemberAdmin(dto);
	}

	@Override
	public int updateMemberAdmin(Member dto) throws Exception { //회원수정
		return dao.updateMemberAdmin(dto);
	}

	/* ****************두리안 유저**************** */
	@Override
	public int insertMemberUser(Member dto) throws Exception {  //회원가입
		return dao.insertMemberUser(dto);
	}
	
	public int updateMemberUser(Member dto)  throws Exception{ //회원수정
		return dao.updateMemberUser(dto);
		
	}

	}


