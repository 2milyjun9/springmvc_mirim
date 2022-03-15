package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

// *******************************  테스트        ********************* 
	@RequestMapping(value = "/member/memberListTest")
	public String memberListTest(MemberVo vo, Model model) throws Exception {
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "member/memberListTest";
	}
	
	@RequestMapping(value = "/member/memberViewTest")
	public String memberViewTest(MemberVo vo, Model model) throws Exception {
		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		return "member/memberViewTest";
	}

	@RequestMapping(value = "/member/memberFormTest")
	public String memberFormTest(MemberVo vo, Model model) throws Exception {
		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		return "member/memberFormTest";
	}

	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {
		service.insert(dto);
		return "";
	}

	@RequestMapping(value = "/member/memberEditTest")
	public String memberEditTest(Model model) throws Exception {
		return "member/memberEditTest";
	}
	
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(Member dto) throws Exception {
		service.update(dto);
		return "";
	}

// ******************************두리안 어드민 (회원) ******************************** 
	@RequestMapping(value = "/member/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);
		
		if (count != 0) {
			List<Member> list = service.memberList(vo);
			model.addAttribute("list", list);
		} else {
		}
		return "member/memberList";
	}

	@RequestMapping(value = "/member/memberViewAdmin")
	public String memberViewAdmin(MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);
		return "member/memberViewAdmin";
	}

	@RequestMapping(value = "/member/memberFormAdmin")
	public String memberFormAdmin(MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);
		return "member/memberFormAdmin";
	}
	
	@RequestMapping(value = "/member/memberInstAdmin")
	public String memberInstAdmin(Model model, Member dto) throws Exception {
		service.insertMemberAdmin(dto);
		return "redirect:/member/memberList";
	}

	
	/*
	 * @RequestMapping(value = "/member/memberEditAdmin") public String
	 * memberEditXdmin(Model model) throws Exception { return
	 * "member/memberEditAdmin"; }
	 * 
	 * @RequestMapping(value = "/member/memberUpdtAdmin") public String
	 * memberInst2Admin(Model model, Member dto) throws Exception {
	 * service.insert(dto); return "redirect:/code/memberFormAdmin"; }
	 */

	// *************************두리안 사용자 (회원)*************************************

	
	/*
	 * @RequestMapping(value = "/member/memberFormUser") public String
	 * memberFormUser(MemberVo vo, Model model) throws Exception { Member rt =
	 * service.memberViewUser(vo); model.addAttribute("item", rt); return
	 * "member/memberFormUser"; }
	 * 
	 * 
	 * @RequestMapping(value = "/member/memberViewUser") public String
	 * memberViewUser(MemberVo vo, Model model) throws Exception { Member rt =
	 * service.memberViewUser(vo); model.addAttribute("item", rt); return
	 * "member/memberViewUser"; }
	 */
	@RequestMapping(value = "/member/memberEditUser")
	public String memberEditUser(Model model) throws Exception {
		return "member/memberEditUser";
	}

	@RequestMapping(value = "/member/memberInstUser")
	public String memberInstUser(Model model, Member dto) throws Exception {
		service.insert(dto);
		return "redirect:/code/memberEditUser";
	}

}