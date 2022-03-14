package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.modules.code.CodeVo;



@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	/* ****************테스트**************** */
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo); 
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		return dao.insert(dto);
	}

	
	 @Override public Member selectOne(MemberVo vo) throws Exception { 
		 return dao.selectOne(vo); 
	 }
	 
	 @Override public int update(Member dto) throws Exception { return
	 dao.update(dto); 
	 }

	 
	/*  ****************두리안 어드민****************  */
	@Override
	public List<Member> memberList(MemberVo vo)throws Exception {
		return dao.memberList(vo); 
	}
	
	@Override
	public int insertMemberAdmin(Member dto) throws Exception {
		return dao.insertMemberAdmin(dto);
	}

	@Override
	public Member memberViewAdmin(MemberVo vo) throws Exception {
		 return dao.memberViewAdmin(vo); 
	}

	 
	/*  ****************두리안 유저****************  */

	@Override
	public int insertMemberUser(Member dto) throws Exception {
		return 0;
	}






}
