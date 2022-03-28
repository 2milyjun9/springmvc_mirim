package com.junefw.infra.modules.product;

import java.util.List;

import com.junefw.infra.modules.member.Member;
import com.junefw.infra.modules.member.MemberVo;





public interface ProductService {

	//  **********auctProduct (Admin) *****************
	public List<Product> productListAdmin(ProductVo vo) throws Exception; //상품리스트
	public int insertProductAdmin(Product dto) throws Exception; //상품등록
	public Product productViewAdmin(ProductVo vo) throws Exception; //상품뷰
	Member memberViewAdmin(MemberVo vo) throws Exception;  //상품뷰->멤버뷰
	
	public int updateProductAdmin(Product dto) throws Exception; //상품수정
	int productOneCount(ProductVo vo) throws Exception;   //검색
	int productDeleteAdmin(ProductVo vo) throws Exception; //진짜삭제
	int productUpdateDeleteAdmin(ProductVo vo) throws Exception;  //가짜삭제

	//  **********auctProduct (User) *****************
	List<Product> productMainUser(ProductVo vo) throws Exception; //상품리스트_메인
	public int insertProductUser(Product dto) throws Exception; //상품등록
	public Product productViewUser(ProductVo vo) throws Exception; //상품뷰
	public int updateProductUser(Product dto) throws Exception; //상품수정
	int productOneCountUser(ProductVo vo) throws Exception; //검색
	int productDeleteUser(ProductVo vo) throws Exception; //진짜삭제
	int productUpdateDeleteUser(ProductVo vo) throws Exception; //가짜삭제
	int productPurchase(Product dto) throws Exception; // 경매신청




}