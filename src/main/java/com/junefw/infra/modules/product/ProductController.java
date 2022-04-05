package com.junefw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.junefw.infra.modules.member.Member;
import com.junefw.infra.modules.member.MemberVo;
@Controller
public class ProductController {

	@Autowired
	ProductServiceImpl service;

// *******************************  auctProduct(Admin) ********************* 
	@RequestMapping(value = "/product/productListAdmin") // 상품리스트
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

	@RequestMapping(value = "/product/productViewAdmin") // 상품뷰
	public String productViewAdmin(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewAdmin(vo);
		model.addAttribute("item", rt);

		
		/*
		 * Member rt1 = service.memberViewAdmin(vo); model.addAttribute("item", rt1);
		 */
		return "product/productViewAdmin";
	}

	@RequestMapping(value = "/product/productFormAdmin") // 상품등록
	public String productFormAdmin(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewAdmin(vo);
		model.addAttribute("item", rt);
		return "product/productFormAdmin";
	}

	@RequestMapping(value = "/product/productInstAdmin") // 상품등록받음
	public String productInstAdmin(Product dto, ProductVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		service.insertProductAdmin(dto);
		
		vo.setIfmmSeq(dto.getIfmmSeq());
		vo.setAcprSeq(dto.getAcprSeq());
		
/*		redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq()); // get방식
		redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get방식
		redirectAttributes.addAttribute("shOption", vo.getShProductOption()); // get방식
		redirectAttributes.addAttribute("shValue", vo.getShProductValue()); // get방식
		return "redirect:/product/productViewAdmin?acprSeq=" + dto.getAcprSeq() + makeQueryString(vo);
		*/
		redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/product/ProductView";
		}

	@RequestMapping(value = "/product/productEditAdmin") // 상품수정
	public String productEditTestAdmin(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewAdmin(vo);
		model.addAttribute("item", rt);
		return "product/productEditAdmin";
	}

	@RequestMapping(value = "/product/productUpdtAdmin") // 상품수정받음
	public String productUpdt(Product dto, ProductVo vo) throws Exception {
		service.updateProductAdmin(dto);
		return "redirect:/product/productAdminView?acprSeq=" + dto.getAcprSeq() + makeQueryString(vo);
	}


	public String makeQueryString(ProductVo vo) {
		String tmp = "&thisPage=" + vo.getThisPage() + "&shProductOption=" + vo.getShProductOption()
				+ "&shProductValue=" + vo.getShProductValue();
		return tmp;
	}

	// ******************************* auctProduct(User) *********************
	// ******************************* auctProduct(User) *********************
	// ******************************* auctProduct(User) *********************
	// ******************************* auctProduct(User) *********************
	@RequestMapping(value = "/product/productMainUser") // 메인페이지 상품리스트
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

	@RequestMapping(value = "/product/productMainUser2") // 로그인 메인페이지 상품리스트
	public String productMainUser2(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		int count = service.productOneCountUser(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Product> list = service.productMainUser(vo);
			model.addAttribute("list", list);
		} else {
		}
		return "product/productMainUser2";
	}
	
	@RequestMapping(value = "/product/productViewUser") // 상품뷰
	public String productViewUser(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewUser(vo);
		model.addAttribute("item", rt);
		return "product/productViewUser";
	}

	@RequestMapping(value = "/product/productFormUser") // 상품등록
	public String productFormUser(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		Product rt = service.productViewUser(vo);
		model.addAttribute("item", rt);
		return "product/productFormUser";
	}

	@RequestMapping(value = "/product/productInstUser") // 상품등록받음
	public String productInstUser(Product dto, ProductVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		service.insertProductUser(dto);
		vo.setIfmmSeq(dto.getIfmmSeq());
		vo.setAcprSeq(dto.getAcprSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		/*
		 * redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq()); // get방식
		 * redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get방식
		 * redirectAttributes.addAttribute("shOption", vo.getShProductOption()); //
		 * get방식 redirectAttributes.addAttribute("shValue", vo.getShProductValue()); //
		 * get방식
		 */		
		return "redirect:/product/productView";
		/*
		 * return "redirect:/product/productViewUser?acprSeq=" + dto.getAcprSeq() +
		 * makeQueryString(vo);
		 */
	}


	@RequestMapping(value = "/product/productPurchase") // 상품구매
	public String productPuchase(Product dto, ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.productPurchase(dto);
		redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq()); // get방식
		redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get방식
		redirectAttributes.addAttribute("shOption", vo.getShProductOption()); // get방식
		redirectAttributes.addAttribute("shValue", vo.getShProductValue()); // get방식
		/*
		 * return "product/productViewUser?acprSeq=" + dto.getAcprSeq() +
		 * makeQueryString(vo);
		 */
		return "product/productPurchase";
	}
	
	
	// ******************************* auctProduct(공통) *********************
	// ******************************* auctProduct(공통) *********************
	// ******************************* auctProduct(공통) *********************
	// ******************************* auctProduct(공통) *********************
	// ******************************* auctProduct(공통) *********************
	// ******************************* auctProduct(공통) *********************
	
	@RequestMapping(value = "/product/productDelete")
	public String productDelete(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.productDelete(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShProductOption());
		redirectAttributes.addAttribute("shValue", vo.getShProductValue());
		return "redirect:/product/productMainUser";
	}

	@RequestMapping(value = "/product/productNelete")
	public String productNelete(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.productUpdateDelete(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShProductOption());
		redirectAttributes.addAttribute("shValue", vo.getShProductValue());
		return "redirect:/product/productMainUser";
	}

	
}