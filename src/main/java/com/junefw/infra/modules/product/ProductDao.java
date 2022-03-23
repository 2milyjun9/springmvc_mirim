package com.junefw.infra.modules.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



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
	public int insertProductAdmin(Product dto) {  //상품등록
		return sqlSession.insert(namespace + ".insertProductAdmin", dto);
	}
	public int updateProductAdmin(Product dto) {   //상품수정
		return sqlSession.update(namespace + ".updateProductAdmin", dto);
	}

	//  **********auctProduct (사용자) *****************
	
	public List<Product> productMainUser(ProductVo vo) {   // 상품리스트 (메인)
		return sqlSession.selectList(namespace + ".productMainUser", vo);
	}
	
	public Product productViewUser(ProductVo vo) {   // 상품뷰
		return sqlSession.selectOne(namespace + ".productViewAUser", vo);
	}
	
	public int insertProductUser(Product dto) {  //상품등록
		return sqlSession.insert(namespace + ".insertProductUser", dto);
	}
	public int updateProductUser(Product dto) {   //상품수정
		return sqlSession.update(namespace + ".updateProductUser", dto);
	}
	public int productOneCountUser(ProductVo vo) {   //상품검색
		return sqlSession.selectOne(namespace+".productOneCountUser", vo);
	}
}