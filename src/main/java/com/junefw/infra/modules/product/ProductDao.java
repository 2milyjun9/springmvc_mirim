package com.junefw.infra.modules.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.junefw.infra.modules.member.Member;
import com.junefw.infra.modules.member.MemberVo;




@Repository
public class ProductDao {

	@Inject
//   @Resource(name = "sqlSession")
	private SqlSession sqlSession;

	//  **********auctProduct (관리자) *****************
	private static String namespace = "com.junefw.infra.modules.product.ProductMpp";

	public int productOneCount(ProductVo vo) {   //상품검색
		return sqlSession.selectOne(namespace+".productOneCount", vo);
	}
	public List<Product> productListAdmin(ProductVo vo) {   // 상품리스트
		return sqlSession.selectList(namespace + ".productListAdmin", vo);
	}
	public Product productViewAdmin(ProductVo vo) {   //상품뷰
		return sqlSession.selectOne(namespace + ".productViewAdmin", vo);
	}

	/*
	 * public Member memberViewAdmin(ProductVo vo) { //상품뷰->멤버뷰 return
	 * sqlSession.selectOne(namespace + ".memberViewAdmin", vo); }
	 */
	public int insertProductAdmin(Product dto) {  //상품등록
		return sqlSession.insert(namespace + ".insertProductAdmin", dto);
	}
	public int updateProductAdmin(Product dto) {   //상품수정
		return sqlSession.update(namespace + ".updateProductAdmin", dto);
	}
	//진짜삭제
	public int productDeleteAdmin(ProductVo vo) { 
		return sqlSession.delete(namespace+ ".productDeleteAdmin", vo);
		}
	//가짜삭제
	public int productUpdateDeleteAdmin(ProductVo vo) { 
		return sqlSession.update(namespace + ".productUpdateDeleteAdmin", vo); 
		}
	
	public Member ProductrUploaded(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".ProductrUploaded", vo);  //상품사진등록
	}
	
	//  **********auctProduct (사용자) *****************
	public int productOneCountUser(ProductVo vo) {   //상품검색
		return sqlSession.selectOne(namespace+".productOneCountUser", vo);
	}
	public List<Product> productMainUser(ProductVo vo) {   // 상품리스트 (메인)
		return sqlSession.selectList(namespace + ".productMainUser", vo);
	}
	public List<Product> productMainUser2(ProductVo vo) {   // 상품리스트 (로그인메인)
		return sqlSession.selectList(namespace + ".productMainUser2", vo);
	}
	public Product productViewUser(ProductVo vo) {   // 상품뷰
		return sqlSession.selectOne(namespace + ".productViewUser", vo);
	}
	
	public int insertProductUser(Product dto) {  //상품등록
		return sqlSession.insert(namespace + ".insertProductUser", dto);
	}
	public int updateProductUser(Product dto) {   //상품수정
		return sqlSession.update(namespace + ".updateProductUser", dto);
	}
	

	// *********************************************공통 ****************************
	

	public int productDelete(ProductVo vo) {   //진짜삭제
		return sqlSession.delete(namespace+ ".productDelete", vo);
		}
	public int productUpdateDelete(ProductVo vo) { //가짜삭제
		return sqlSession.update(namespace + ".productUpdateDelete", vo); 
		}
	public int productPurchase(Product dto) { //경매신청
		return sqlSession.update(namespace + ".productPurchase", dto); 
		}
	 public int insertMember (Product dto) { //상품등록(회원정보)
		   return sqlSession.insert(namespace + ".insertMember", dto); 
	   }
	public int insertUploaded(Product dto) { //상품사진
		return sqlSession.insert(namespace + ".insertUploaded", dto); //회원등록(사진,파일)
	}
	public Product ProductUploaded(ProductVo vo) { //상품사진
		return sqlSession.selectOne(namespace + ".MemberUploaded", vo);  
	}
	
}