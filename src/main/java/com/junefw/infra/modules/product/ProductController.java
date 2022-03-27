package com.junefw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


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
	public String productViewAdmin(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewAdmin(vo);
		model.addAttribute("item", rt);
		return "product/productViewAdmin";
	}
	@RequestMapping(value = "/product/productFormAdmin")   //상품등록
	public String productFormAdmin( @ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewAdmin(vo);
		model.addAttribute("item", rt);
		return "product/productFormAdmin";	
	}

	@RequestMapping(value = "/product/productInstAdmin") //상품등록받음
	public String productInstAdmin(Product dto, ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.insertProductAdmin(dto);
		redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq()); // get방식
		redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get방식
		redirectAttributes.addAttribute("shOption", vo.getShProductOption()); // get방식
		redirectAttributes.addAttribute("shValue", vo.getShProductValue()); // get방식
		return "redirect:/product/productViewAdmin?acprSeq=" + dto.getAcprSeq() + makeQueryString(vo);
	}


	@RequestMapping(value = "/product/productEditAdmin") //상품수정
	public String productEditTestAdmin(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewAdmin(vo);
		model.addAttribute("item", rt);
		return "product/productEditAdmin";
	}
	
	@RequestMapping(value = "/product/productUpdtAdmin")  //상품수정받음
	public String productUpdt(Product dto, ProductVo vo) throws Exception {
		service.updateProductAdmin(dto);
		return "redirect:/product/productAdminView?acprSeq=" + dto.getAcprSeq() + makeQueryString(vo);
	}


		@RequestMapping(value = "/product/productDeleAdmin")
		public String productDeleAdmin(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.productDeleteAdmin(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShProductOption());
		redirectAttributes.addAttribute("shValue", vo.getShProductValue());
		return "redirect:/product/productListAdmin";
	}

	  @RequestMapping(value = "/code/codeGroupNeleAdmin") 
	  public String codeGroupNeleAdmin(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception { 
	  service.productUpdateDeleteAdmin(vo);
	  redirectAttributes.addAttribute("thisPage", vo.getThisPage());
	  redirectAttributes.addAttribute("shOption", vo.getShProductOption());
	  redirectAttributes.addAttribute("shValue", vo.getShProductValue()); 
	  return "redirect:/product/productListAdmin";
	  }

		public String makeQueryString(ProductVo vo) {
			String tmp = "&thisPage=" + vo.getThisPage() + "&shProductOption=" + vo.getShProductOption() 
			+ "&shProductValue=" + vo.getShProductValue();
			return tmp;
		}
	// *******************************  auctProduct(User) ********************* 
	@RequestMapping(value = "/product/productMainUser")    //메인페이지 상품리스트
	public String productMainUser(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		int count = service.productOneCountUser(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Product> list = service.productMainUser(vo);
			model.addAttribute("list", list);
		} else {
		}
		return "product/productMainUser";
	}
	@RequestMapping(value = "/product/productViewUser")   //상품뷰
	public String productViewUser(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewUser(vo);
		model.addAttribute("item", rt);
		return "product/productViewUser";
	}

	@RequestMapping(value = "/product/productFormUser")   //상품등록
	public String productFormUser( @ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewUser(vo);
		model.addAttribute("item", rt);
		return "product/productFormUser";
	}

	@RequestMapping(value = "/product/productInstUser") //상품등록받음
	public String productInstUser(Product dto, ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.insertProductUser(dto);
		redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq()); // get방식
		redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get방식
		redirectAttributes.addAttribute("shOption", vo.getShProductOption()); // get방식
		redirectAttributes.addAttribute("shValue", vo.getShProductValue()); // get방식
		return "redirect:/product/productViewUser?acprSeq=" + dto.getAcprSeq() + makeQueryString(vo);
	}

	@RequestMapping(value = "/product/productDeleteUser")
	public String productDeleteUser(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
	service.productDeleteUser(vo);
	redirectAttributes.addAttribute("thisPage", vo.getThisPage());
	redirectAttributes.addAttribute("shOption", vo.getShProductOption());
	redirectAttributes.addAttribute("shValue", vo.getShProductValue());
	return "redirect:/product/productMainUser";
}

	@RequestMapping(value = "/code/codeGroupNeleUser") 
  public String codeGroupNeleUser(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception { 
  service.productUpdateDeleteUser(vo);
  redirectAttributes.addAttribute("thisPage", vo.getThisPage());
  redirectAttributes.addAttribute("shOption", vo.getShProductOption());
  redirectAttributes.addAttribute("shValue", vo.getShProductValue()); 
  return "redirect:/product/productMainUser";
  }
	
	
	@RequestMapping(value = "/product/productPurchase") //상품구매
	public String productPuchase(Product dto, ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.productPurchase(dto);
		redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq()); // get방식
		redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get방식
		redirectAttributes.addAttribute("shOption", vo.getShProductOption()); // get방식
		redirectAttributes.addAttribute("shValue", vo.getShProductValue()); // get방식
		return "redirect:/product/productViewUser?acprSeq=" + dto.getAcprSeq() + makeQueryString(vo);
	}
}