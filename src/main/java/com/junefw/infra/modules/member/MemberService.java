package com.junefw.infra.modules.member;

import java.util.List;


public interface MemberService {

	// Test

	public List<Member> selectList(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int update(Member dto) throws Exception;

	// 두리안 어드민
	int selectOneCount(MemberVo vo) throws Exception;
	public List<Member> memberList(MemberVo vo) throws Exception;
	public int insertMemberAdmin(Member dto) throws Exception;
	public Member memberViewAdmin(MemberVo vo) throws Exception;

	// 두리안유저

	public int insertMemberUser(Member dto) throws Exception;
	



}