package com.junefw.infra.modules.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;




@Repository
public class MemberDao {

	@Inject
//   @Resource(name = "sqlSession")
	private SqlSession sqlSession;

	// 테스트 ***************************
	private static String namespace = "com.junefw.infra.modules.member.MemberMpp";

	public List<Member> selectList(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public Member selectOne(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int insert(Member dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public int update(Member dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	// 두리안 어드민 ****************************
	public int selectOneCount(MemberVo vo){
		return sqlSession.selectOne(namespace+".selectOneCount", vo);} //회원검색
	
	public List<Member> memberList(MemberVo vo) {
		return sqlSession.selectList(namespace + ".memberList", vo);  //회원리스트
	}
	public Member memberViewAdmin(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".memberViewAdmin", vo); //회원뷰
	}
	public int insertMemberAdmin(Member dto) {
		return sqlSession.insert(namespace + ".insertMemberAdmin", dto); //회원등록
	}
	public int updateMemberAdmin(Member dto) {
		return sqlSession.update(namespace + ".updateMemberAdmin", dto); //회원수정
	}
	
	// 두리안 유저 ****************************
	public int insertMemberUser(Member dto) {
		return sqlSession.insert(namespace + ".insertMemberUser", dto); //회원가입
	}
	public int updateMemberUser(Member dto) {
		return sqlSession.update(namespace + ".updateMemberUser", dto); //회원수정
	}


	
}

	