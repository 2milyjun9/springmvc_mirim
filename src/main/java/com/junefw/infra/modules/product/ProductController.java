package com.junefw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class ProductController {

	@Autowired
	ProductServiceImpl service;

// *******************************  auctProduct(Admin) ********************* 
	@RequestMapping(value = "/product/productListAdmin")   //상품리스트
	public String productListAdmin(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		int count = service.productOneCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Product> list = service.productListAdmin(vo);
			model.addAttribute("list", list);
		} else {
		}
		return "product/productListAdmin";
	}
	
	@RequestMapping(value = "/product/productViewAdmin")   //상품뷰
	public String productViewAdmin(ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewAdmin(vo);
		model.addAttribute("item", rt);
		return "product/productViewAdmin";
	}

	@RequestMapping(value = "/product/productFormAdmin")   //상품등록
	public String productFormAdmin(ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewAdmin(vo);
		model.addAttribute("item", rt);
		return "product/productFormAdmin";
	}

	@RequestMapping(value = "/product/productInst") //상품등록받음
	public String productInst(Model model, Product dto) throws Exception {
		service.insertProductAdmin(dto);
		return "";
	}

	@RequestMapping(value = "/product/productEditAdmin") //상품수정
	public String productEditTestAdmin(Model model) throws Exception {
		return "product/productEditAdmin";
	}
	
	@RequestMapping(value = "/product/productUpdt")  //상품수정받음
	public String productUpdt(Product dto) throws Exception {
		service.updateProductAdmin(dto);
		return "";
	}

}