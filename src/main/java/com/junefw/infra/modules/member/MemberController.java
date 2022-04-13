package com.junefw.infra.modules.member;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.naver.NaverLoginBO;
import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.modules.code.Code;
import com.junefw.infra.modules.code.CodeServiceImpl;

@Controller
public class MemberController /* extends BaseController */ {

	@Autowired
	MemberServiceImpl service;

// *******************************  테스트 ********************* 
	@RequestMapping(value = "/member/memberListTest") // 회원리스트 테스트
	public String memberListTest(MemberVo vo, Model model) throws Exception {
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		System.out.println("asdfasdfasdf");
		return "member/memberListTest";
	}

	@RequestMapping(value = "/member/memberViewTest") // 회원뷰 테스트
	public String memberViewTest(MemberVo vo, Model model) throws Exception {
		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		return "member/memberViewTest";
	}

	@RequestMapping(value = "/member/memberFormTest") // 회원등록 테스트
	public String memberFormTest(MemberVo vo, Model model) throws Exception {
		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		return "member/memberFormTest";
	}

	@RequestMapping(value = "/member/memberInst") // 회원등록 받음
	public String memberInst(Model model, Member dto) throws Exception {
		service.insert(dto);
		return "";
	}

	@RequestMapping(value = "/member/memberEditTest") // 회원수정 테스트
	public String memberEditTest(Model model) throws Exception {
		return "member/memberEditTest";
	}

	@RequestMapping(value = "/member/memberUpdt") // 회원수정받음
	public String memberUpdt(Member dto) throws Exception {
		service.update(dto);
		return "";
	}

// ******************************두리안 어드민  ******************************** 
// ******************************두리안 어드민  ******************************** 
// ******************************두리안 어드민  ******************************** 
	@RequestMapping(value = "/member/memberList") // 회원리스트
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model, Code code) throws Exception {

		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);
		if (count != 0) {
			List<Member> list = service.memberList(vo);
			model.addAttribute("list", list);
		} else {
		}

		System.out.println("UtilDateTime.nowLocalDateTime():" + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate():" + UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString():" + UtilDateTime.nowString());

		/*
		 * 00:00:00 수정 소스 vo.setShMemberOptionDate(vo.getShMemberOptionDate() == null ?
		 * 1 : vo.getShMemberOptionDate());
		 * vo.setShMemberDateStart(vo.getShMemberDateStart() == null ?
		 * UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(),
		 * Constants.DATE_INTERVAL) :
		 * UtilDateTime.add00TimeString(vo.getShMemberDateStart()));
		 * vo.setShMemberDateEnd(vo.getShMemberDateEnd() == null ?
		 * UtilDateTime.nowString() :
		 * UtilDateTime.addNowTimeString(vo.getShMemberDateEnd()));
		 */

		return "member/memberList";
	}

	@RequestMapping(value = "/member/memberViewAdmin") // 회원뷰
	public String memberViewAdmin(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		System.out.println("###########################");
		System.out.println("vo.getShMemberOption(): " + vo.getShMemberOption());
		System.out.println("vo.getShMemberValue(): " + vo.getShMemberValue());
		System.out.println("vo.getThispage(): " + vo.getThisPage());
		System.out.println("vo.getIfmmSeq():" + vo.getIfmmSeq());
		System.out.println("###########################");
		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);

		model.addAttribute("uploaded", service.MemberUploaded(vo));

		return "member/memberViewAdmin";
	}

	@RequestMapping(value = "/member/memberFormAdmin") // 회원등록
	public String memberFormAdmin(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);

		model.addAttribute("codeGender", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeTelecom", CodeServiceImpl.selectListCachedCode("9"));

		return "member/memberFormAdmin";
	}

	@RequestMapping(value = "/member/memberInstAdmin") // 회원등록받음
	public String memberInstAdmin(MemberVo vo, Model model, Member dto, RedirectAttributes redirectAttributes)
			throws Exception {

		/*
		 * 기존컨트롤러방식 MultipartFile multipartFile = dto.getFile();
		 * 
		 * String fileName = multipartFile.getOriginalFilename(); String ext =
		 * fileName.substring(fileName.lastIndexOf(".") + 1); String uuid =
		 * UUID.randomUUID().toString(); String uuidFileName = uuid + "." + ext;
		 * 
		 * multipartFile.transferTo(new File(
		 * "C:/factory/ws_sts_4130/springmvc_mirim/src/main/webapp/resources/uploaded/"
		 * + uuidFileName));
		 * 
		 * dto.setOriginalFileName(fileName); dto.setUuidFileName(uuidFileName);
		 */

		service.insertMemberAdmin(dto);

		vo.setIfmmSeq(dto.getIfmmSeq());

		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberViewAdmin";
	}

	@RequestMapping(value = "/member/memberEditAdmin") // 회원수정
	public String memberEditAdmin(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);
		return "member/memberEditAdmin";
	}

	@RequestMapping(value = "/member/memberUpdtAdmin") // 회원수정받음
	public String memberUpdtAdmin(@ModelAttribute("vo") Member dto, MemberVo vo) throws Exception {
		service.updateMemberAdmin(dto);

		return "redirect:/member/memberViewAdmin";
		/*
		 * return "redirect:/member/memberViewAdmin?ifmmSeq=" + dto.getIfmmSeq()+
		 * makeQueryString(vo);
		 */
	}

	@RequestMapping(value = "/member/memberLoginAdmin") // 사원로그인
	public String memberLoginAdmin() throws Exception {
		return "/member/memberLoginAdmin";
	}

	public String makeQueryString(MemberVo vo) {
		String tmp = "&thisPage=" + vo.getThisPage() + "&shOption=" + vo.getShMemberOption() + "&shMemberValue="
				+ vo.getShMemberValue();
		return tmp;
	}

	@RequestMapping(value = "/member/memberSearch") // 상품등록->회원검색
	public String memberSearch(@ModelAttribute("vo") MemberVo vo, Model model, Code code) throws Exception {

		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);
		if (count != 0) {
			List<Member> list = service.memberList(vo);
			model.addAttribute("list", list);
		} else {
		}

		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);
		return "member/memberSearch";
	}

	// *************************두리안 사용자 *************************************
	@RequestMapping(value = "/member/memberFormUser") // 회원가입
	public String memberFormUser(MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewAdmin(vo);
		model.addAttribute("item", rt);
		return "member/memberFormUser";
	}

	@RequestMapping(value = "/member/memberInstUser") // 회원가입받음
	public String memberInstUser(Model model, Member dto) throws Exception {
		service.insertMemberUser(dto);
		return "redirect:/product/productMainUser";
	}

	@RequestMapping(value = "/member/memberViewUser") // 회원뷰
	public String memberViewUser(MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewUser(vo);
		model.addAttribute("item", rt);
		return "member/memberViewUser";
	}

	@RequestMapping(value = "/member/memberEditUser") // 회원수정
	public String memberEditUser(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member rt = service.memberViewUser(vo);
		model.addAttribute("item", rt);
		return "member/memberEditUser";
	}

	@RequestMapping(value = "/member/memberUpdtUser") // 회원수정받음
	public String memberUpdtUser(Model model, Member dto) throws Exception {
		service.updateMemberUser(dto);
		return "redirect:/member/memberViewUser?ifmmSeq=" + dto.getIfmmSeq();
	}

	
	/* **************************로그인 ***************************/
	
	@RequestMapping(value = "/member/memberLoginUser") // 기본로그인
	public String memberLoginUser(Member dto, Model model) throws Exception {
		Member rt = service.selectOneLoginUser(dto);
		model.addAttribute("rt", rt);
		return "/member/memberLoginUser";
	}

	@ResponseBody
	@RequestMapping(value = "/member/loginProc") // 기본로그인 PR
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneLoginUser(dto);

		if (rtMember != null) { // rtMember = service.selectOneLogin(dto);

			if (rtMember.getIfmmSeq() != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				// 60second * 30 = 30minute //refsession.setMaxInactiveInterval(-1); // session
				// time unlimited

				httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
				httpSession.setAttribute("sessId", rtMember.getIfmmId());
				httpSession.setAttribute("sessName", rtMember.getIfmmName());
				httpSession.setAttribute("sessNickname", rtMember.getIfmmNickname());

				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/member/loginProc") public Map<String, Object>
	 * loginProc(Member dto, HttpSession httpSession) throws Exception { Map<String,
	 * Object> returnMap = new HashMap<String, Object>();
	 * 
	 * Member rtMember = service.selectOneLoginUser(dto);
	 * 
	 * if(rtMember != null) { // rtMember = service.selectOneLogin(dto);
	 * 
	 * if(rtMember2 != null) { httpSession.setMaxInactiveInterval( 60 *
	 * Constants.SESSION_MINUTE); //60second * 30 = 30minute //ref
	 * session.setMaxInactiveInterval(-1); // session time unlimited
	 * 
	 * httpSession.setAttribute("sessSeq", rtMember2.getIfmmSeq());
	 * httpSession.setAttribute("sessId", rtMember2.getIfmmId());
	 * httpSession.setAttribute("sessName", rtMember2.getIfmmName());
	 * 
	 * rtMember2.setIflgResultNy(1); service.insertLogLogin(rtMember2);
	 * 
	 * Date date = rtMember2.getIfmmPwdModDate(); LocalDateTime
	 * ifmmPwdDateLocalDateTime = LocalDateTime.ofInstant(date,
	 * toInstant(),ZondId,systemDefault());
	 * 
	 * returnMap.put("rt", "success"); } else {
	 * dto.setIfmmSeq(rtMember.getIfmmSeq(); dto.setIflgResultNy(0);
	 * service.insertLogLogin(dto);
	 * 
	 * returnMap.put("rt", "fail");
	 * 
	 * } } else { dto.setIflgResultNy(0); service.insertLogLogin(dto);
	 * 
	 * returnMap.put("rt", "fail"); } return returnMap; }
	 */

	@ResponseBody
	@RequestMapping(value = "/member/logoutProc") // 기본 로그아웃
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

	@ResponseBody // 카카오 로그인 PR
	@RequestMapping(value = "/member/KakaoLgProc")
	public Map<String, Object> KakaoLgProc(@RequestParam("ifmmName") String name, Member dto, HttpSession httpSession)
			throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		System.out.println(name);
		httpSession.setAttribute("sessName", name);
		/*
		 * httpSession.setAttribute("sessId", "카카오 회원입니다");
		 * httpSession.setAttribute("sessSeq", "카카오 회원입니다");
		 */
		returnMap.put("item", "success");
		return returnMap;
	}

	/* 네이버 로그인 미림소스 */
	/*
	 * private NaverLoginBO naverLoginBO;
	 * @Autowired private void setNaverLoginBO(NaverLoginBO naverLoginBO){
	 * this.naverLoginBO = naverLoginBO; }
	 * 
	 * @RequestMapping("/member/meberLoginUser") //네이버 로그인 public ModelAndView
	 * login(HttpSession session) { 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출
	 * String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session); 생성한 인증 URL을
	 * View로 전달 return new ModelAndView("/product/productMainUser2", "url",
	 * naverAuthUrl); }
	 */

	/* 네이버 로그인2 */
	 private NaverLoginBO naverLoginBO;
	 @Autowired private void setNaverLoginBO(NaverLoginBO naverLoginBO){
	 this.naverLoginBO = naverLoginBO; }
	 
	 @RequestMapping(value = "/member/memberLoginUser", method = { RequestMethod.GET, RequestMethod.POST }) 
	 public String userLogin(Model model, HttpSession session) {
     /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
	 String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
	 System.out.println("네이버:" + naverAuthUrl);
	 model.addAttribute("url",naverAuthUrl); 
	 return "/member/memberLoginUser";
	 
	 }
	 

	// 네이버 로그인 PR
	 	@RequestMapping(value = "/member/NaverLgProc", method = { RequestMethod.GET, RequestMethod.POST }) 
		public String NaverLgProc(@RequestParam String code, @RequestParam String state, HttpSession session)
		throws IOException {
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		// 로그인 사용자 정보를 읽어온다.
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
//      System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
		session.setAttribute("result", apiResult);
		System.out.println("result" + apiResult);
		
		session.setAttribute("sessSeq", 0); // 생략 가능
		/* 네이버 로그인 성공 페이지 View 호출 */
		return "redirect:/product/productMainUser2";
	}

	// 페북 로그인 PR
	@ResponseBody
	@RequestMapping(value = "/member/FBLgProc")
	public Map<String, Object> FBLgProc(@RequestParam("ifmmName") String name, Member dto, HttpSession httpSession)
			throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		System.out.println(name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId", "페이스북 회원입니다");
		httpSession.setAttribute("sessSeq", "페이스북 회원입니다");
		returnMap.put("item", "success");
		return returnMap;
	}
	

	@ResponseBody //구글 로그인
	@RequestMapping(value = "/member/GLgProc")
	public Map<String, Object> GLgProc(@RequestParam("ifmmName")String name,Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(name);
		httpSession.setAttribute("sessName",name);
		httpSession.setAttribute("sessId","구글 회원입니다");
		httpSession.setAttribute("sessSeq","구글 회원입니다");
	
		returnMap.put("rt", "success");
		
		return returnMap;
	}


	// ************************* 공통 *************************************
	// ************************* 공통 *************************************
	// ************************* 공통 *************************************

	@RequestMapping(value = "/member/memberDele") // 회원삭제
	public String memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.deleteMember(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shMemberOption", vo.getShMemberOption());
		redirectAttributes.addAttribute("shMemberValue", vo.getShMemberValue());
		return "redirect:/member/memberList";
	}

	@RequestMapping(value = "/member/memberNele") // 회원가짜삭제
	public String memberNele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.updateDeleteMember(vo);

		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("ifmmSeq", vo.getIfmmSeq());
		redirectAttributes.addAttribute("ifmmDelNy", vo.getIfmmDelNy());
		redirectAttributes.addAttribute("ifmmName", vo.getIfmmName());
		redirectAttributes.addAttribute("shMemberOption", vo.getShMemberOption());
		redirectAttributes.addAttribute("shMemberValue", vo.getShMemberValue());

		return "redirect:/member/memberList";
	}

	@RequestMapping(value = "/member/memberMultiDele") // 멀티 진짜삭제
	public String memberMultiDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		for (String checkboxSeq : checkboxSeqArray) {
			vo.setIfmmSeq(checkboxSeq);
			service.deleteMember(vo);
		}
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberList";
	}

	@RequestMapping(value = "/member/memberMultiNele") // 멀티 가짜삭제
	public String memberMultiNele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		for (String checkboxSeq : checkboxSeqArray) {
			vo.setIfmmSeq(checkboxSeq);
			service.updateDeleteMember(vo);
		}
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberList";
	}

}
