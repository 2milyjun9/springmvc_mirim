package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.common.util.UtilDateTime;

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

		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		dao.insert(dto);
		/*
		 * dao.insertEmail(dto); dao.insertPhone(dto); dao.insertAddress(dto);
		 */
		return 1;
	}
	
	@Override
	public int updateMemberAdmin(Member dto) throws Exception { //회원수정
		return dao.updateMemberAdmin(dto);
	}

	/*
	 * @Override public Member selectOneLoginAdmin(Member dto) throws Exception {
	 * //사원로그인 return dao.selectOneLoginAdmin(dto); }
	 * 
	 * 
	 * public void setRegMod(Member dto) throws Exception{ HttpServletRequest
	 * httpServletRequest = ((ServletRequestAttributes)
	 * 
	 * dto.setRegIp }
	 */
	/* ****************두리안 유저**************** */
	@Override
	public int insertMemberUser(Member dto) throws Exception {  //회원가입
		return dao.insertMemberUser(dto);
	}
	
	public int updateMemberUser(Member dto)  throws Exception{ //회원수정
		return dao.updateMemberUser(dto);
	}
	@Override
	public Member memberViewUser(MemberVo vo) throws Exception { //회원뷰
		return dao.memberViewUser(vo);
	}
	/*
	 * @Override public Member selectOneLoginUser(Member dto) throws Exception {
	 * //회원로그인 return dao.selectOneLoginUser(dto); }
	 */
	}


