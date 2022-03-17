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
		return dao.productListAdmin(vo);
	}
	@Override
	public Product productViewAdmin(ProductVo vo) throws Exception {
		return dao.productViewAdmin(vo);
	}
	@Override
	public int insertProductAdmin(Product dto) throws Exception {
		return dao.insertProductAdmin(dto);
	}
	@Override
	public int updateProductAdmin(Product dto) throws Exception {
		return dao.updateProductAdmin(dto);
	}
	@Override
	public int productOneCount(ProductVo vo) throws Exception {
		return dao.productOneCount(vo);
	}
	
}
