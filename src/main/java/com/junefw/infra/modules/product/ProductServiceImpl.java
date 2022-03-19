package com.junefw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao dao;

	/* ****************Product(Admin)**************** */
	@Override
	public List<Product> productListAdmin(ProductVo vo) throws Exception {
		return dao.productListAdmin(vo);  //상품리스트
	}
	@Override
	public Product productViewAdmin(ProductVo vo) throws Exception {
		return dao.productViewAdmin(vo);  //상품뷰
	}
	@Override
	public int insertProductAdmin(Product dto) throws Exception {
		return dao.insertProductAdmin(dto); //상품등록
	}
	@Override
	public int updateProductAdmin(Product dto) throws Exception {
		return dao.updateProductAdmin(dto); //상품수정
	}
	@Override
	public int productOneCount(ProductVo vo) throws Exception {
		return dao.productOneCount(vo); //상품검색
	}
	
}
