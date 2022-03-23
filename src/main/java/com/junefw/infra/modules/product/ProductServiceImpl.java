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

	/* ****************Product(User)**************** */
	@Override
	public List<Product> productMainUser(ProductVo vo) throws Exception {
		return dao.productMainUser(vo);  //상품리스트
	}
	@Override
	public Product productViewUser(ProductVo vo) throws Exception {
		return dao.productViewUser(vo);  //상품뷰
	}
	@Override
	public int insertProductUser(Product dto) throws Exception {
		return dao.insertProductUser(dto); //상품등록
	}
	@Override
	public int updateProductUser(Product dto) throws Exception {
		return dao.updateProductUser(dto); //상품수정
	}
	@Override
	public int productOneCountUser(ProductVo vo) throws Exception {
		return dao.productOneCountUser(vo); //상품검색
	}
	public Product productFormUser(ProductVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
