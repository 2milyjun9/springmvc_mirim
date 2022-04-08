package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.common.util.UtilUpload;

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

		/*setRegMod(dto);*/
			
		dto.setRegDateTime(UtilDateTime.nowDate());
		dao.insertMemberAdmin(dto);

		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace ("serviceimpl", "");
			
			UtilUpload.upload(multipartFile, pathModule, dto);

			dto.setTableName("infrMemberUploaded");
			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setPseq(dto.getIfmmSeq());
			 
			dao.insertUploaded(dto);
	
			dao.insertEmail(dto);
			dao.insertPhone(dto);
			dao.insertAddress(dto);
			dao.insertAddressOnline(dto);
			/* dao.insertJoinQna(dto); */
		
			j++;
		}
		    j = 0;
			for(MultipartFile multipartFile : dto.getFile1()) {
				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace ("serviceimpl", "");
				
				UtilUpload.upload(multipartFile, pathModule, dto);

				dto.setTableName("infrMemberUploaded");
				dto.setType(1);
				dto.setDefaultNy(0);
				dto.setSort(j);
				dto.setPseq(dto.getIfmmSeq());
				 
				dao.insertUploaded(dto);
			
				j++;
	}
		return 1;
	}
	
	@Override
	public int updateMemberAdmin(Member dto) throws Exception { //회원수정
		
		dto.setModDateTime(UtilDateTime.nowDate());
		
		dao.updateMemberAdmin(dto);
		dao.updateEmail(dto);
		dao.updatePhone(dto);
		dao.updateAddress(dto);
		dao.updateAddressOnline(dto);

		/*
		 * dao.updateJoinQna(dto);
		 */
		return 1;
	}
	

		/*
		 * public void setRegMod(Member dto) throws Exception{ HttpServletRequest
		 * httpServletRequest = ((ServletRequestAttributes) dto.setRegIp }
		 */
	/* ****************두리안 유저**************** */
	@Override
	public int insertMemberUser(Member dto) throws Exception {  //회원가입
		
		dto.setRegDateTime(UtilDateTime.nowDate());
	
		dao.insertMemberAdmin(dto);
		dao.insertEmail(dto);
		dao.insertPhone(dto);
		dao.insertAddress(dto);
		dao.insertAddressOnline(dto);
		/* dao.insertJoinQna(dto); */
		
		return 1;
		/* return dao.insertMemberUser(dto); */
	}
	
	public int updateMemberUser(Member dto)  throws Exception{ //회원수정
		
		dto.setModDateTime(UtilDateTime.nowDate());
		
		dao.updateMemberUser(dto);
		dao.updateEmail(dto);
		dao.updatePhone(dto);
		dao.updateAddress(dto);
		dao.updateAddressOnline(dto);
		/* dao.updateJoinQna(dto); */
		return 1;
	}
	@Override
	public Member memberViewUser(MemberVo vo) throws Exception { //회원뷰
		return dao.memberViewUser(vo);
	}

	@Override
	public Member selectOneLoginUser(Member dto) { //회원로그인
		return dao.selectOneLoginUser(dto); 
	}
	
	/* ****************************두리안 공통******************************* */
	@Override
	public int deleteMember(MemberVo vo) {   //회원삭제
		return dao.deleteMember(vo);	
	}
	@Override
	public int updateDeleteMember(MemberVo vo) throws Exception { //회원가짜삭제 
		return dao.updateDeleteMember(vo);
	}
	@Override
	public int insertEmail(Member dto) throws Exception {  //회원등록 이메일
		return dao.insertEmail(dto);
	}
	@Override
	public int insertPhone(Member dto) throws Exception {  //회원등록 이메일
		return dao.insertEmail(dto);
	}
	@Override
	public int insertAddress(Member dto) throws Exception {  //회원등록 이메일
		return dao.insertAddress(dto);
	}
	@Override
	public int insertAddressOnline(Member dto) throws Exception {  //회원등록 이메일
		return dao.insertAddressOnline(dto);
	}


	
}
