package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "/code/codeGroupList")

	public String codeGroupList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {

		// count 가져올것
		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);

		if (count != 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}
		// model.addAttribute("vo" vo); 위에 @모델이랑 둘중하나사용하는것

		return "code/codeGroupList";
	}

	@RequestMapping(value = "/code/codeGroupForm") // 브라우저창에 입력하는 주소
	public String codeGroupForm() throws Exception {
		return "code/codeGroupForm";
	} // jsp 이름으로 입력}

	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto) throws Exception {
		service.insert(dto);
		return "redirect:/code/codeGroupList";
	}

	@RequestMapping(value = "/code/codeGroupView") // 브라우저창에 입력하는 주소 ?ifcgSeq=4
	public String codeGroupView(CodeVo vo, Model model) throws Exception {
		// 디비까지 가서 한건의 데이터 값을 가지고온다. 가지고 온값을 JSP로 넘겨준다.
		System.out.println("vo.getIfcgSeq():" + vo.getIfcgSeq());

		Code rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		return "code/codeGroupView";
	}

	@RequestMapping(value = "/code/codeGroupForm2")
	public String codeGroupForm2(CodeVo vo, Model model) throws Exception {
		// 한건의 데이터를 가져와야겠죠
		Code rt = service.selectOne(vo);

		model.addAttribute("rt", rt);
		return "code/codeGroupForm2";
	}

	@RequestMapping(value = "/code/codeGroupUpdt")
	public String codeGroupUpdt(Code dto) throws Exception {
		service.update(dto);
		return "redirect:/code/codeGroupView?ifcgSeq=" + dto.getIfcgSeq();
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
	public String codeForm(CodeVo vo, Model model) throws Exception {
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "code/codeForm";
	}

	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto) throws Exception {
		service.insertCode(dto);
		return "redirect:/code/codeList";
	}

	@RequestMapping(value = "/code/codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {
		Code rt = service.selectOneCode(vo);
		model.addAttribute("item", rt);
		return "code/codeView";
	}

	@RequestMapping(value = "/code/codeForm2")
	public String codeForm2(CodeVo vo, Model model) throws Exception {
		Code rt = service.selectOneCode(vo);
		model.addAttribute("rt", rt);
		return "code/codeForm2";
	}

	@RequestMapping(value = "/code/codeUpdt")
	public String codeUpdt(Code dto) throws Exception {
		service.updateCode(dto);
		return "redirect:/code/codeView?ifcdSeq=" + dto.getIfcdSeq();

	}

}
