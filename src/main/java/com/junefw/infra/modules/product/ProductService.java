package com.junefw.infra.modules.product;

import java.util.List;



public interface ProductService {

	//  **********auctProduct (Admin) *****************
	public List<Product> productListAdmin(ProductVo vo) throws Exception;
	public int insertProductAdmin(Product dto) throws Exception;
	public Product productViewAdmin(ProductVo vo) throws Exception;
	public int updateProductAdmin(Product dto) throws Exception;
	int productOneCount(ProductVo vo) throws Exception;


}