package com.junefw.infra.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {

	@Autowired
	MainServiceImpl service;
	
	/*  **************************** 관리자 ****************************  */

	@RequestMapping(value = "/main/mainAdmin")
	public String mainAdmin() throws Exception {
		return "main/mainAdmin";
	}

}
