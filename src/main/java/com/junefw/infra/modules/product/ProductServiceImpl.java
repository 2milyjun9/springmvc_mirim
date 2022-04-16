package com.junefw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.common.util.UtilUpload;
import com.junefw.infra.modules.member.Member;
import com.junefw.infra.modules.member.MemberVo;


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

	/*
	 * public Member memberViewAdmin(ProductVo vo) { return dao.memberViewAdmin(vo);
	 * //상품뷰->멤버뷰 }
	 */
	@Override
	public Member memberViewAdmin(MemberVo vo) {
		return null;
	}
	
	@Override
	public int insertProductAdmin(Product dto) throws Exception {
		/* dto.setRegDateTime(UtilDateTime.nowDate()); */
		
		dao.insertProductAdmin(dto);
		dao.insertMember(dto);
		
		return 1; //상품등록
		/*
		 * return dao.insertProductAdmin(dto); //상품등록
		 */	
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
		return dao.productMainUser(vo);  //메인
	}
	@Override
	public List<Product> productMainUser2(ProductVo vo) throws Exception {
		return dao.productMainUser2(vo);  //메인(로그인)
	}
	@Override
	public Product productViewUser(ProductVo vo) throws Exception {
		return dao.productViewUser(vo);  //상품뷰
	}
	@Override
	public int insertProductUser(Product dto) throws Exception {  //상품등록
		
		/* dto.setRegDateTime(UtilDateTime.nowDate()); */

		dao.insertProductUser(dto);   
		
		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace ("serviceimpl", "");
			
			UtilUpload.uploadProduct(multipartFile, pathModule, dto);

			dto.setTableName("auctProductUploaded");
			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setPseq(dto.getIfmmSeq());
			 
			dao.insertUploaded(dto);
			/* dao.insertMember(dto); */
			dao.insertProductUser(dto);   
		
			j++;
		}
		    j = 0;
			for(MultipartFile multipartFile : dto.getFile1()) {
				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace ("serviceimpl", "");
				
				UtilUpload.uploadProduct(multipartFile, pathModule, dto);

				dto.setTableName("auctProductUploaded");
				dto.setType(1);
				dto.setDefaultNy(0);
				dto.setSort(j);
				dto.setPseq(dto.getIfmmSeq());
				 
			
				j++;
	}
		return 1;
	}

	
	@Override
	public int updateProductUser(Product dto) throws Exception {
		return dao.updateProductUser(dto); //상품수정
	}

	@Override
	public int productPurchase(Product dto) throws Exception {
		return dao.productPurchase(dto); 
	}

	/* ****************************두리안 공통******************************* */

	@Override
	public int productOneCountUser(ProductVo vo) throws Exception {
		return dao.productOneCountUser(vo); //상품검색
	}
	@Override
	public int productDelete(ProductVo vo) throws Exception {
		return dao.productDelete(vo); //진짜삭제
		}
	@Override
	public int productUpdateDelete(ProductVo vo) throws Exception {
		return dao.productUpdateDelete(vo); //가짜삭제
		}
	@Override
	public int insertMember(Product dto) throws Exception {
		return dao.insertMember(dto); //상품등록 회원
	}

	@Override
	public Product ProductUploaded(ProductVo vo) throws Exception { //상품사진
		return dao.ProductUploaded(vo);
	}

}
