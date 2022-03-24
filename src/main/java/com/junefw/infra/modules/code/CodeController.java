package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "/code/codeGroupList"  )   /*,  method = RequestMethod.POST */
	public String codeGroupList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		// count 가져올것
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else { // by pass
		}
		// model.addAttribute("vo" vo); 위에 @모델이랑 둘중하나사용하는것
		return "code/codeGroupList";
	}
	@RequestMapping(value = "/code/codeGroupForm") // 브라우저창에 입력하는 주소
	public String codeGroupForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		return "code/codeGroupForm";
	} // jsp 이름으로 입력}
	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto, CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		/* System.out.println("dto.getIfcgSeq():" + dto.getIfcgSeq()); //null */
		service.insert(dto);
		/* System.out.println("dto.getIfcgSeq():" + dto.getIfcgSeq()); // 값붙음 */
		/* return "redirect:/code/codeGroupList"; */
		redirectAttributes.addAttribute("ifcgSeq", dto.getIfcgSeq()); // get방식
		redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get방식
		redirectAttributes.addAttribute("shOption", vo.getShOption()); // get방식
		redirectAttributes.addAttribute("shValue", vo.getShValue()); // get방식
		/* return "rediret:/code/codeGroupView"; */

		return "redirect:/code/codeGroupView?ifcgSeq=" + dto.getIfcgSeq() + makeQueryString(vo);

		/*
		 * 메이크쿼리로바꿈 +"&thisPage=" +vo.getThisPage() +"&shOption="+vo.getShOption()
		 * +"&shValue="+vo.getShValue();
		 */
	}
	@RequestMapping(value = "/code/codeGroupView") // 브라우저창에 입력하는 주소 ?ifcgSeq=4
	public String codeGroupView(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		// 디비까지 가서 한건의 데이터 값을 가지고온다. 가지고 온값을 JSP로 넘겨준다.
		System.out.println("###########################");
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getThispage(): " + vo.getThisPage());
		System.out.println("vo.getIfcgSeq():" + vo.getIfcgSeq());
		System.out.println("###########################");
		Code rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		return "code/codeGroupView";
		/*
		 * return "code/codeGroupView?ifcgSeq=" + dto.getIfcgSeq() + "&thisPage=" +
		 * vo.getThisPage() + "&shOption"+vo.getShOption() + "&shValue" +
		 * vo.getShValue();
		 */
	}
	@RequestMapping(value = "/code/codeGroupForm2")
	public String codeGroupForm2(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		// 한건의 데이터를 가져와야겠죠
		Code rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		return "code/codeGroupForm2";
	}

	@RequestMapping(value = "/code/codeGroupUpdt")
	public String codeGroupUpdt(Code dto, CodeVo vo) throws Exception {
		service.update(dto);
		return "redirect:/code/codeGroupView?ifcgSeq=" + dto.getIfcgSeq() + makeQueryString(vo);
		/*
		 * +"&thisPage=" +vo.getThisPage() +"&shOption="+vo.getShOption()
		 * +"&shValue="+vo.getShValue();
		 */
	}
		@RequestMapping(value = "/code/codeGroupDele")
		public String codeGroupDele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		return "redirect:/code/codeGroupList";
	}

	  @RequestMapping(value = "/code/codeGroupNele") 
	  public String codeGroupNele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception { 
	  service.updateDelete(vo);
	  redirectAttributes.addAttribute("thisPage", vo.getThisPage());
	  redirectAttributes.addAttribute("shOption", vo.getShOption());
	  redirectAttributes.addAttribute("shValue", vo.getShValue()); 
	  return "redirect:/code/codeGroupList";
	  }

	// ---------------------------------infrCode--------------------------------------------
	@RequestMapping(value = "/code/codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		List<Code> listCodeGroup = service.selectList(vo);
		model.addAttribute("listCodeGroup", listCodeGroup);
		int count = service.selectOneCodeCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Code> list = service.selectListCode(vo);
			model.addAttribute("list", list);
		} else {
		}
		return "code/codeList";
	}

	@RequestMapping(value = "/code/codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "code/codeForm";
	}

	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto, CodeVo vo) throws Exception {
		service.insertCode(dto);
		return "redirect:/code/codeView?ifcdSeq=" + dto.getIfcdSeq() + makeQueryString(vo);
		/*
		 * 메이크쿼리스트링 +"&thisPage=" +vo.getThisPage() +"&shOption="+vo.getShOption()
		 * +"&shValue="+vo.getShValue();
		 */
	}

	public String makeQueryString(CodeVo vo) {
		String tmp = "&thisPage=" + vo.getThisPage() + "&shOption=" + vo.getShOption() + "&shValue=" + vo.getShValue();
		return tmp;
	}

	@RequestMapping(value = "/code/codeView")
	public String codeView(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		Code rt = service.selectOneCode(vo);
		model.addAttribute("item", rt);
		return "code/codeView";
	}

	@RequestMapping(value = "/code/codeForm2")
	public String codeForm2(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		Code rt = service.selectOneCode(vo);
		model.addAttribute("item", rt);
		return "code/codeForm2";
	}

	@RequestMapping(value = "/code/codeUpdt")
	public String codeUpdt(Code dto, CodeVo vo) throws Exception {
		service.updateCode(dto);
		return "redirect:/code/codeView?ifcdSeq=" + dto.getIfcdSeq() + makeQueryString(vo);
		/*
		 * +"&thisPage=" +vo.getThisPage() +"&shOption="+vo.getShOption()
		 * +"&shValue="+vo.getShValue();
		 */
	}
	@RequestMapping(value = "/code/codeDele")
	public String codeDele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
	service.deleteCode(vo);
	redirectAttributes.addAttribute("thisPage", vo.getThisPage());
	redirectAttributes.addAttribute("shOption", vo.getShOption());
	redirectAttributes.addAttribute("shValue", vo.getShValue());
	return "redirect:/code/codeList";
}

  @RequestMapping(value = "/code/codeNele") 
  public String codeNele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception { 
  service.updateDeleteCode(vo);
  redirectAttributes.addAttribute("thisPage", vo.getThisPage());
  redirectAttributes.addAttribute("shOption", vo.getShOption());
  redirectAttributes.addAttribute("shValue", vo.getShValue()); 
  return "redirect:/code/codeList";
  }
}
