package com.junefw.infra.modules.product;

import java.util.List;





public interface ProductService {

	//  **********auctProduct (Admin) *****************
	public List<Product> productListAdmin(ProductVo vo) throws Exception;
	public int insertProductAdmin(Product dto) throws Exception;
	public Product productViewAdmin(ProductVo vo) throws Exception;
	public int updateProductAdmin(Product dto) throws Exception;
	int productOneCount(ProductVo vo) throws Exception;   //검색
	int productDeleteAdmin(ProductVo vo) throws Exception;
	int productUpdateDeleteAdmin(ProductVo vo) throws Exception;

	//  **********auctProduct (User) *****************
	List<Product> productMainUser(ProductVo vo) throws Exception;
	public int insertProductUser(Product dto) throws Exception;
	public Product productViewUser(ProductVo vo) throws Exception;
	public int updateProductUser(Product dto) throws Exception;
	int productOneCountUser(ProductVo vo) throws Exception; //검색
	int productDeleteUser(ProductVo vo) throws Exception;
	int productUpdateDeleteUser(ProductVo vo) throws Exception;



}