package com.junefw.infra.modules.member;

import java.util.List;


public interface MemberService {

	// Test
	public List<Member> selectList(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int update(Member dto) throws Exception;

	// 두리안 어드민
	int selectOneCount(MemberVo vo) throws Exception;    //회원검색
	public List<Member> memberList(MemberVo vo) throws Exception; //회원리스트
	public Member memberViewAdmin(MemberVo vo) throws Exception;  //회원뷰
	public int insertMemberAdmin(Member dto) throws Exception;  //회원등록
	int updateMemberAdmin(Member dto) throws Exception; //회원수정
	public Member MemberUploaded(MemberVo vo) throws Exception; //회원업로드

	// 두리안유저
	int insertMemberUser(Member dto) throws Exception; //회원등록
	int updateMemberUser(Member dto) throws Exception; //회원수정
	public Member memberViewUser(MemberVo vo) throws Exception;  //회원뷰
	Member selectOneLoginUser(Member dto) throws Exception;  //회원로그인
	
	
	//공통
	int deleteMember(MemberVo vo) throws Exception;  //회원삭제
	int updateDeleteMember(MemberVo vo) throws Exception; //회원가짜삭제 
	int insertEmail(Member dto) throws Exception; //회원등록 메일
	int insertPhone(Member dto) throws Exception; //회원등록 폰
	int insertAddress(Member dto) throws Exception; //회원등록 주소
	int insertAddressOnline(Member dto) throws Exception; //회원등록 온란주소



}