package com.junefw.infra.modules.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@Autowired
	IndexServiceImpl service;
	
	/*  **************************** 관리자 ****************************  */

	@RequestMapping(value = "/index/indexView")
	public String indexView() throws Exception {
		return "index/indexView";
	}

}
