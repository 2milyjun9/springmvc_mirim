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


	//  **********auctProduct (User) *****************
	List<Product> productMainUser(ProductVo vo) throws Exception; //상품리스트_기본메인
	List<Product> productMainUser2(ProductVo vo) throws Exception; //상품리스트_로그인메인
	public int insertProductUser(Product dto) throws Exception; //상품등록
	public Product productViewUser(ProductVo vo) throws Exception; //상품뷰
	public int updateProductUser(Product dto) throws Exception; //상품수정
	int productPurchase(Product dto) throws Exception; // 경매신청
	int productOneCountUser(ProductVo vo) throws Exception; //검색
	public Product ProductUploaded(ProductVo vo) throws Exception; //상품사진업로드

	
	// ****************공통*****************************
	int productDelete(ProductVo vo) throws Exception; //진짜삭제
	int productUpdateDelete(ProductVo vo) throws Exception; //가짜삭제
	int insertMember(Product vo) throws Exception; //회원등록 메일
}