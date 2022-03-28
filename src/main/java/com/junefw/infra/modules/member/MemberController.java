package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.modules.code.Code;
import com.junefw.infra.modules.code.CodeServiceImpl;

@Controller
public class MemberController /* extends BaseController */ {

	@Autowired
	MemberServiceImpl service;

// *******************************  테스트 ********************* 
	@RequestMapping(value = "/member/memberListTest")   //회원리스트 테스트
	public String memberListTest(MemberVo vo, Model model) throws Exception {
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "member/memberListTest";
	}
	@RequestMapping(value = "/member/memberViewTest") //회원뷰 테스트
	public String memberViewTest(MemberVo vo, Model model) throws Exception {
		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		return "member/memberViewTest";
	}
	@RequestMapping(value = "/member/memberFormTest") //회원등록 테스트
	public String memberFormTest(MemberVo vo, Model model) throws Exception {
		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		return "member/memberFormTest";
	}
	@RequestMapping(value = "/member/memberInst")   //회원등록 받음 
	public String memberInst(Model model, Member dto) throws Exception {
		service.insert(dto);
		return "";
	}
	@RequestMapping(value = "/member/memberEditTest") //회원수정 테스트
	public String memberEditTest(Model model) throws Exception {
		return "member/memberEditTest";
	}
	@RequestMapping(value = "/member/memberUpdt")  //회원수정받음
	public String memberUpdt(Member dto) throws Exception {
		service.update(dto);
		return "";
	}
	
	 
// ******************************두리안 어드민  ******************************** 
	@RequestMapping(value = "/member/memberList")    //회원리스트
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model, Code code) throws Exception {
		int count = service.selectOneCount(vo);
		
		vo.setShMemberOptionDate(vo.getShMemberOptionDate() == null ? 1 : vo.getShMemberOptionDate());
		vo.setShMemberDateStart(vo.getShMemberDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShMemberDateStart());
		vo.setShMemberDateEnd(vo.getShMemberDateEnd() == null ? UtilDateTime.nowString() : vo.getShMemberDateEnd());
		
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Member> list = service.memberList(vo);
			model.addAttribute("list", list);
		} else {
		}
		System.out.println("UtilDateTime.nowLocalDateTime():" + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate():" + UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString():" + UtilDateTime.nowString());
		return "member/memberList";
	}
	@RequestMapping(value = "/member/memberViewAdmin") //회원뷰
	public String memberViewAdmin(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		System.out.println("###########################");
		System.out.println("vo.getShMemberOption(): " + vo.getShMemberOption());
		System.out.println("vo.getShMemberValue(): " + vo.getShMemberValue());
		System.out.println("vo.getThispage(): " + vo.getThisPage());
		System.out.println("vo.getIfmmSeq():" + vo.getIfmmSeq());
		System.out.println("###########################");
		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);
		return "member/memberViewAdmin";
	}
	@RequestMapping(value = "/member/memberFormAdmin") //회원등록
	public String memberFormAdmin(MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);
		model.addAttribute("codeGender",CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("codeTelecom",CodeServiceImpl.selectListCachedCode("10"));
		return "member/memberFormAdmin";
	}
	
	@RequestMapping(value = "/member/memberInstAdmin") //회원등록받음
	public String memberInstAdmin(Model model, Member dto) throws Exception {
		service.insertMemberAdmin(dto);
		return "/member/memberFormAdmin";
	}
	  @RequestMapping(value = "/member/memberEditAdmin")  //회원수정
	  public String memberEditAdmin(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception { 
		  	Member rt = service.memberViewAdmin(vo);
		   model.addAttribute("item", rt);
		  return "member/memberEditAdmin"; 
	}
	  @RequestMapping(value = "/member/memberUpdtAdmin")  //회원수정받음
	  public String updateMemberAdmin(Member dto,MemberVo vo) throws Exception {
	 service.updateMemberAdmin(dto); 
	 return "redirect:/member/memberViewAdmin?ifmmSeq=" + dto.getIfmmSeq() + makeQueryString(vo);
	 }

	@RequestMapping(value = "/member/memberLoginAdmin")    //사원로그인
		public String memberLoginAdmin() throws Exception {
			return "/member/memberLoginAdmin";
		}
	public String makeQueryString(MemberVo vo) {
	String tmp = "&thisPage=" + vo.getThisPage() + "&shOption=" + vo.getShMemberOption() 
	+ "&shMemberValue=" + vo.getShMemberValue(); return tmp;
		}
	
	// *************************두리안 사용자 *************************************
	@RequestMapping(value = "/member/memberFormUser")    //회원가입
	public String memberFormUser(MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);
		return "member/memberFormUser";
	}
	@RequestMapping(value = "/member/memberInstUser")     //회원가입받음
	public String memberInstUser(Model model, Member dto) throws Exception {
		service.insertMemberUser(dto);
		return "member/memberFormUser";
	}
	@RequestMapping(value = "/member/memberViewUser") //회원뷰
	public String memberViewUser(MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewUser(vo);
		model.addAttribute("item", rt);
		return "member/memberViewUser";
	}
	@RequestMapping(value = "/member/memberEditUser")     // 회원수정
	public String memberEditUser(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	  	Member rt = service.memberViewUser(vo);
	   model.addAttribute("item", rt);
		return "member/memberEditUser";
	}
	@RequestMapping(value = "/member/memberUpdtUser")    //회원수정받음
	public String memberUpdtUser(Model model, Member dto) throws Exception {
		service.updateMemberUser(dto);
		 return "redirect:/member/memberViewUser?ifmmSeq=" + dto.getIfmmSeq(); 
		 }
	@RequestMapping(value = "/member/memberLoginUser")    //회원로그인
	public String memberLoginUser() throws Exception {
		return "/member/memberLoginUser";
	}
}