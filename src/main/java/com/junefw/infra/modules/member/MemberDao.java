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

	// ***************************************테스트 ***************************
	private static String namespace = "com.junefw.infra.modules.member.MemberMpp";

	public List<Member> selectList(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);}
	public Member selectOne(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public int insert(Member dto) {
		return sqlSession.insert(namespace + ".insert", dto);}
	public int update(Member dto) {
		return sqlSession.update(namespace + ".update", dto); }
	
	// ********************************두리안 어드민 ****************************
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

//	public Member selectOneIdAdmin(Member dto) {
//		 return sqlSession.selectOne(namespace + ".selectOneIdAdmin", dto); //사원로그인셀렉
//	}
//	public Member selectOneLoginAdmin(Member dto) {
//		 return sqlSession.selectOne(namespace + ".selectOneLoginAdmin", dto); //사원로그인
//	}
	// ********************************************두리안 유저 ******************************************
	public int insertMemberUser(Member dto) {
		return sqlSession.insert(namespace + ".insertMemberUser", dto); //회원가입
	}
	public int updateMemberUser(Member dto) {
		return sqlSession.update(namespace + ".updateMemberUser", dto); //회원수정
	}
	public Member memberViewUser(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".memberViewUser", vo); //회원뷰
	}
	public Member selectOneIdUser(Member dto) {
		 return sqlSession.selectOne(namespace + ".selectOneIdUser", dto); //회원로그인셀렉
	}
	public Member selectOneLoginUser(Member dto) {
		 return sqlSession.selectOne(namespace + ".selectOneLoginUser", dto); //회원로그인
	}

	// *********************************************두리안 공통 ****************************
	//진짜삭제
	public int deleteMember(MemberVo vo) { return sqlSession.delete(namespace+ ".deleteMember", vo);}
	//가짜삭제
	public int updateDeleteMember(MemberVo vo) { return sqlSession.update(namespace + ".updateDeleteMember", vo); }

	 public int insertEmail (Member dto) {
		   return sqlSession.insert(namespace + ".insertEmail", dto); //회원등록(이메일)
	   }
	   public int insertPhone(Member dto) {
		   return sqlSession.insert(namespace + ".insertPhone", dto); //회원등록(연락처)
	   }
	   public int insertAddress(Member dto) {
		   return sqlSession.insert(namespace + ".insertAddress", dto); //회원등록(주소)
	   }
		public int insertAddressOnline(Member dto) {
		 return sqlSession.insert(namespace + ".insertAddressOnline", dto); //회원등록(온라인주소)
		}
		public int insertJoinQna(Member dto) {
			return sqlSession.insert(namespace + ".insertJoinQna", dto); //회원등록(질문)
			}
		public int updateEmail(Member dto) {
			return sqlSession.update(namespace + ".updateEmail", dto); //회원수정(이메일)
		}
		public int updatePhone(Member dto) {
			return sqlSession.update(namespace + ".updatePhone", dto); //회원수정(연락처)
		}
		public int updateAddress(Member dto) {
			return sqlSession.update(namespace + ".updateAddress", dto); //회원수정(주소)
		}
		public int updateAddressOnline(Member dto) {
		return sqlSession.update(namespace + ".updateAddressOnline", dto); //회원등록(온라인주소)
		}
		public int updateJoinQna(Member dto) {
		 return sqlSession.update(namespace + ".updateJoinQna", dto); //회원등록(질문)
		}
		
	}

	