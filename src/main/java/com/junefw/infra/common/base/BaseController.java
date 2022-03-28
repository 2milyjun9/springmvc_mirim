package com.junefw.infra.common.base;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


@Controller
public class BaseController {

	@Autowired
	BaseServiceImpl service;


}
