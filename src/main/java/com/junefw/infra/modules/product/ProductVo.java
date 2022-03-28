package com.junefw.infra.modules.product;

public class ProductVo {


		//common
		private String shProductOption;
		private String shProductValue;
		private String shMemberOption;
		private String shMemberValue;

		
	// auctProduct Search
		private String shAcprDelNy;
		private String shAcprProductName;
		private String shAcprStatusCd;
		private String shAcprResultNy;
	
	//paging	
		private int thisPage = 1;									// 현재 페이지
		private int rowNumToShow = 10;								// 화면에 보여줄 데이터 줄 갯수
		private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수

		private int totalRows;										// 전체 데이터 갯수
		private int totalPages;										// 전체 페이지 번호
		private int startPage;										// 시작 페이지 번호
		private int endPage;										// 마지막 페이지 번호
		
		private int startRnumForOracle = 1;							// 쿼리 시작 row
		private int endRnumForOracle;								// 쿼리 끝 row
		private Integer RNUM;
		
		private int startRnumForMysql = 0;							// 쿼리 시작 row
		
		
		public void setParamsPaging(int totalRowsParam) {
		
		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages+ 1;
		}

		if (totalPages < thisPage) {
			thisPage = totalPages;
		}
		
		startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

		endPage = (startPage + pageNumToShow - 1);

		if (endPage > totalPages) {
			endPage = (totalPages);
		}
		
		endRnumForOracle = ((rowNumToShow * thisPage));
		startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
		if (startRnumForOracle < 1) startRnumForOracle = 1;
		
		
		if (thisPage == 1 || thisPage == 0) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage-1)));
		}
		
		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);		
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
}

		//infrmember
	private String ifmmSeq;
	private String ifmmAdminNy ;
	private String ifmmId ;
	private String ifmmName;
	private String ifmmNickname;
	private String ifmmGrade;
	private String ifmmDob ;
	private String ifmmPhoto ;
	private String ifmmPassword;
	private String ifmmPwdModDate ;
	private String ifmmGenderCd ;
	private String ifmmSaveCd ;
	private String ifmmMarriageCd ;
	private String ifmmMarriageDate ;
	private String ifmmChildrenNum ;
	private String ifmmFavoriteColor ;
	private String ifmmRecommenderSeq ;
	private String ifmmEmailConsentNy ;
	private String ifmmSmsConsentNy ;
	private String ifmmPushConsentNy ;
	private String ifmmDormancyNy ;
	private String ifmmDelNY ;
	private String regIp ;
	private String regSeq ;
	private String regDevice ;
	private String regDateTime ;
	private String regDateTimeSvr ;
	private String modIp ;
	private String modSeq ;
	private String modDevice ;
	private String modDateTime ;
	private String modDateTimeSvr ;


	/* auctproduct */
	private String acprSeq;
	private String acprDefaultNy;
	private String acprProductName;
	private String acprProductNameEng ;
	private String acprCategory;
	private String acprStatusCd;
	private String acprPickNy;
	private String acprDetails;
	private String acprDetailsEng;
	private String acprPickupCd;
	private String acprStartDate;
	private String acprEndDate;
	private String acprPriceStart;
	private String acprPriceNow;
	private String acpsPolicy;
	private String acprHits;
	private String acprAuctionTry;
	private String acprDelNy;

	/* auctpurchase */
	private String acpsMinPrice;
	private String acpsMaxPrice;
	private String acpsBuyDate;
	private String acpsAlert1Ny;
	private String acpsAlert2Ny;
	private String acpsAlert3Ny;
	private String acpsAlert4Ny;
	private String acpsResultNy;
	private String acpsFinalPrice;
	private String acpsReviewCd;
	private String acpsReview;
	private String acpsReviewPhoto1;
	private String acpsReviewPhoto2;
	private String acpsReviewPhoto3;
	private String acpsDelNy;
	
	
public String getShProductOption() {
	return shProductOption;
}



public void setShProductOption(String shProductOption) {
	this.shProductOption = shProductOption;
}



public String getShProductValue() {
	return shProductValue;
}



public void setShProductValue(String shProductValue) {
	this.shProductValue = shProductValue;
}



public String getShAcprDelNy() {
	return shAcprDelNy;
}



public void setShAcprDelNy(String shAcprDelNy) {
	this.shAcprDelNy = shAcprDelNy;
}



public String getShAcprProductName() {
	return shAcprProductName;
}



public void setShAcprProductName(String shAcprProductName) {
	this.shAcprProductName = shAcprProductName;
}



public String getShAcprStatusCd() {
	return shAcprStatusCd;
}



public void setShAcprStatusCd(String shAcprStatusCd) {
	this.shAcprStatusCd = shAcprStatusCd;
}



public String getShAcprResultNy() {
	return shAcprResultNy;
}



public void setShAcprResultNy(String shAcprResultNy) {
	this.shAcprResultNy = shAcprResultNy;
}



public int getThisPage() {
	return thisPage;
}



public void setThisPage(int thisPage) {
	this.thisPage = thisPage;
}



public int getRowNumToShow() {
	return rowNumToShow;
}



public void setRowNumToShow(int rowNumToShow) {
	this.rowNumToShow = rowNumToShow;
}



public int getPageNumToShow() {
	return pageNumToShow;
}



public void setPageNumToShow(int pageNumToShow) {
	this.pageNumToShow = pageNumToShow;
}



public int getTotalRows() {
	return totalRows;
}



public void setTotalRows(int totalRows) {
	this.totalRows = totalRows;
}



public int getTotalPages() {
	return totalPages;
}



public void setTotalPages(int totalPages) {
	this.totalPages = totalPages;
}



public int getStartPage() {
	return startPage;
}



public void setStartPage(int startPage) {
	this.startPage = startPage;
}



public int getEndPage() {
	return endPage;
}



public void setEndPage(int endPage) {
	this.endPage = endPage;
}



public int getStartRnumForOracle() {
	return startRnumForOracle;
}



public void setStartRnumForOracle(int startRnumForOracle) {
	this.startRnumForOracle = startRnumForOracle;
}



public int getEndRnumForOracle() {
	return endRnumForOracle;
}



public void setEndRnumForOracle(int endRnumForOracle) {
	this.endRnumForOracle = endRnumForOracle;
}



public Integer getRNUM() {
	return RNUM;
}



public void setRNUM(Integer rNUM) {
	RNUM = rNUM;
}



public int getStartRnumForMysql() {
	return startRnumForMysql;
}



public void setStartRnumForMysql(int startRnumForMysql) {
	this.startRnumForMysql = startRnumForMysql;
}



public String getIfmmSeq() {
	return ifmmSeq;
}



public void setIfmmSeq(String ifmmSeq) {
	this.ifmmSeq = ifmmSeq;
}



public String getIfmmAdminNy() {
	return ifmmAdminNy;
}



public void setIfmmAdminNy(String ifmmAdminNy) {
	this.ifmmAdminNy = ifmmAdminNy;
}



public String getIfmmId() {
	return ifmmId;
}



public void setIfmmId(String ifmmId) {
	this.ifmmId = ifmmId;
}



public String getIfmmName() {
	return ifmmName;
}



public void setIfmmName(String ifmmName) {
	this.ifmmName = ifmmName;
}



public String getIfmmNickname() {
	return ifmmNickname;
}



public void setIfmmNickname(String ifmmNickname) {
	this.ifmmNickname = ifmmNickname;
}



public String getIfmmGrade() {
	return ifmmGrade;
}



public void setIfmmGrade(String ifmmGrade) {
	this.ifmmGrade = ifmmGrade;
}



public String getIfmmDob() {
	return ifmmDob;
}



public void setIfmmDob(String ifmmDob) {
	this.ifmmDob = ifmmDob;
}



public String getIfmmPhoto() {
	return ifmmPhoto;
}



public void setIfmmPhoto(String ifmmPhoto) {
	this.ifmmPhoto = ifmmPhoto;
}



public String getIfmmPassword() {
	return ifmmPassword;
}



public void setIfmmPassword(String ifmmPassword) {
	this.ifmmPassword = ifmmPassword;
}



public String getIfmmPwdModDate() {
	return ifmmPwdModDate;
}



public void setIfmmPwdModDate(String ifmmPwdModDate) {
	this.ifmmPwdModDate = ifmmPwdModDate;
}



public String getIfmmGenderCd() {
	return ifmmGenderCd;
}



public void setIfmmGenderCd(String ifmmGenderCd) {
	this.ifmmGenderCd = ifmmGenderCd;
}



public String getIfmmSaveCd() {
	return ifmmSaveCd;
}



public void setIfmmSaveCd(String ifmmSaveCd) {
	this.ifmmSaveCd = ifmmSaveCd;
}



public String getIfmmMarriageCd() {
	return ifmmMarriageCd;
}



public void setIfmmMarriageCd(String ifmmMarriageCd) {
	this.ifmmMarriageCd = ifmmMarriageCd;
}



public String getIfmmMarriageDate() {
	return ifmmMarriageDate;
}



public void setIfmmMarriageDate(String ifmmMarriageDate) {
	this.ifmmMarriageDate = ifmmMarriageDate;
}



public String getIfmmChildrenNum() {
	return ifmmChildrenNum;
}



public void setIfmmChildrenNum(String ifmmChildrenNum) {
	this.ifmmChildrenNum = ifmmChildrenNum;
}



public String getIfmmFavoriteColor() {
	return ifmmFavoriteColor;
}



public void setIfmmFavoriteColor(String ifmmFavoriteColor) {
	this.ifmmFavoriteColor = ifmmFavoriteColor;
}



public String getIfmmRecommenderSeq() {
	return ifmmRecommenderSeq;
}



public void setIfmmRecommenderSeq(String ifmmRecommenderSeq) {
	this.ifmmRecommenderSeq = ifmmRecommenderSeq;
}



public String getIfmmEmailConsentNy() {
	return ifmmEmailConsentNy;
}



public void setIfmmEmailConsentNy(String ifmmEmailConsentNy) {
	this.ifmmEmailConsentNy = ifmmEmailConsentNy;
}



public String getIfmmSmsConsentNy() {
	return ifmmSmsConsentNy;
}



public void setIfmmSmsConsentNy(String ifmmSmsConsentNy) {
	this.ifmmSmsConsentNy = ifmmSmsConsentNy;
}



public String getIfmmPushConsentNy() {
	return ifmmPushConsentNy;
}



public void setIfmmPushConsentNy(String ifmmPushConsentNy) {
	this.ifmmPushConsentNy = ifmmPushConsentNy;
}



public String getIfmmDormancyNy() {
	return ifmmDormancyNy;
}



public void setIfmmDormancyNy(String ifmmDormancyNy) {
	this.ifmmDormancyNy = ifmmDormancyNy;
}



public String getIfmmDelNY() {
	return ifmmDelNY;
}



public void setIfmmDelNY(String ifmmDelNY) {
	this.ifmmDelNY = ifmmDelNY;
}



public String getRegIp() {
	return regIp;
}



public void setRegIp(String regIp) {
	this.regIp = regIp;
}



public String getRegSeq() {
	return regSeq;
}



public void setRegSeq(String regSeq) {
	this.regSeq = regSeq;
}



public String getRegDevice() {
	return regDevice;
}



public void setRegDevice(String regDevice) {
	this.regDevice = regDevice;
}



public String getRegDateTime() {
	return regDateTime;
}



public void setRegDateTime(String regDateTime) {
	this.regDateTime = regDateTime;
}



public String getRegDateTimeSvr() {
	return regDateTimeSvr;
}



public void setRegDateTimeSvr(String regDateTimeSvr) {
	this.regDateTimeSvr = regDateTimeSvr;
}



public String getModIp() {
	return modIp;
}



public void setModIp(String modIp) {
	this.modIp = modIp;
}



public String getModSeq() {
	return modSeq;
}



public void setModSeq(String modSeq) {
	this.modSeq = modSeq;
}



public String getModDevice() {
	return modDevice;
}



public void setModDevice(String modDevice) {
	this.modDevice = modDevice;
}



public String getModDateTime() {
	return modDateTime;
}



public void setModDateTime(String modDateTime) {
	this.modDateTime = modDateTime;
}



public String getModDateTimeSvr() {
	return modDateTimeSvr;
}



public void setModDateTimeSvr(String modDateTimeSvr) {
	this.modDateTimeSvr = modDateTimeSvr;
}



public String getAcprSeq() {
	return acprSeq;
}



public void setAcprSeq(String acprSeq) {
	this.acprSeq = acprSeq;
}



public String getAcprDefaultNy() {
	return acprDefaultNy;
}



public void setAcprDefaultNy(String acprDefaultNy) {
	this.acprDefaultNy = acprDefaultNy;
}



public String getAcprProductName() {
	return acprProductName;
}



public void setAcprProductName(String acprProductName) {
	this.acprProductName = acprProductName;
}



public String getAcprProductNameEng() {
	return acprProductNameEng;
}



public void setAcprProductNameEng(String acprProductNameEng) {
	this.acprProductNameEng = acprProductNameEng;
}



public String getAcprCategory() {
	return acprCategory;
}



public void setAcprCategory(String acprCategory) {
	this.acprCategory = acprCategory;
}



public String getAcprStatusCd() {
	return acprStatusCd;
}



public void setAcprStatusCd(String acprStatusCd) {
	this.acprStatusCd = acprStatusCd;
}



public String getAcprPickNy() {
	return acprPickNy;
}



public void setAcprPickNy(String acprPickNy) {
	this.acprPickNy = acprPickNy;
}



public String getAcprDetails() {
	return acprDetails;
}



public void setAcprDetails(String acprDetails) {
	this.acprDetails = acprDetails;
}



public String getAcprDetailsEng() {
	return acprDetailsEng;
}



public void setAcprDetailsEng(String acprDetailsEng) {
	this.acprDetailsEng = acprDetailsEng;
}



public String getAcprPickupCd() {
	return acprPickupCd;
}



public void setAcprPickupCd(String acprPickupCd) {
	this.acprPickupCd = acprPickupCd;
}



public String getAcprStartDate() {
	return acprStartDate;
}



public void setAcprStartDate(String acprStartDate) {
	this.acprStartDate = acprStartDate;
}



public String getAcprEndDate() {
	return acprEndDate;
}



public void setAcprEndDate(String acprEndDate) {
	this.acprEndDate = acprEndDate;
}



public String getAcprPriceStart() {
	return acprPriceStart;
}



public void setAcprPriceStart(String acprPriceStart) {
	this.acprPriceStart = acprPriceStart;
}



public String getAcprPriceNow() {
	return acprPriceNow;
}



public void setAcprPriceNow(String acprPriceNow) {
	this.acprPriceNow = acprPriceNow;
}



public String getAcpsPolicy() {
	return acpsPolicy;
}



public void setAcpsPolicy(String acpsPolicy) {
	this.acpsPolicy = acpsPolicy;
}



public String getAcprHits() {
	return acprHits;
}



public void setAcprHits(String acprHits) {
	this.acprHits = acprHits;
}



public String getAcprAuctionTry() {
	return acprAuctionTry;
}



public void setAcprAuctionTry(String acprAuctionTry) {
	this.acprAuctionTry = acprAuctionTry;
}



public String getAcprDelNy() {
	return acprDelNy;
}



public void setAcprDelNy(String acprDelNy) {
	this.acprDelNy = acprDelNy;
}



public String getAcpsMinPrice() {
	return acpsMinPrice;
}



public void setAcpsMinPrice(String acpsMinPrice) {
	this.acpsMinPrice = acpsMinPrice;
}



public String getAcpsMaxPrice() {
	return acpsMaxPrice;
}



public void setAcpsMaxPrice(String acpsMaxPrice) {
	this.acpsMaxPrice = acpsMaxPrice;
}



public String getAcpsBuyDate() {
	return acpsBuyDate;
}



public void setAcpsBuyDate(String acpsBuyDate) {
	this.acpsBuyDate = acpsBuyDate;
}



public String getAcpsAlert1Ny() {
	return acpsAlert1Ny;
}



public void setAcpsAlert1Ny(String acpsAlert1Ny) {
	this.acpsAlert1Ny = acpsAlert1Ny;
}



public String getAcpsAlert2Ny() {
	return acpsAlert2Ny;
}



public void setAcpsAlert2Ny(String acpsAlert2Ny) {
	this.acpsAlert2Ny = acpsAlert2Ny;
}



public String getAcpsAlert3Ny() {
	return acpsAlert3Ny;
}



public void setAcpsAlert3Ny(String acpsAlert3Ny) {
	this.acpsAlert3Ny = acpsAlert3Ny;
}



public String getAcpsAlert4Ny() {
	return acpsAlert4Ny;
}



public void setAcpsAlert4Ny(String acpsAlert4Ny) {
	this.acpsAlert4Ny = acpsAlert4Ny;
}



public String getAcpsResultNy() {
	return acpsResultNy;
}



public void setAcpsResultNy(String acpsResultNy) {
	this.acpsResultNy = acpsResultNy;
}



public String getAcpsFinalPrice() {
	return acpsFinalPrice;
}



public void setAcpsFinalPrice(String acpsFinalPrice) {
	this.acpsFinalPrice = acpsFinalPrice;
}



public String getAcpsReviewCd() {
	return acpsReviewCd;
}



public void setAcpsReviewCd(String acpsReviewCd) {
	this.acpsReviewCd = acpsReviewCd;
}



public String getAcpsReview() {
	return acpsReview;
}



public void setAcpsReview(String acpsReview) {
	this.acpsReview = acpsReview;
}



public String getAcpsReviewPhoto1() {
	return acpsReviewPhoto1;
}



public void setAcpsReviewPhoto1(String acpsReviewPhoto1) {
	this.acpsReviewPhoto1 = acpsReviewPhoto1;
}



public String getAcpsReviewPhoto2() {
	return acpsReviewPhoto2;
}



public void setAcpsReviewPhoto2(String acpsReviewPhoto2) {
	this.acpsReviewPhoto2 = acpsReviewPhoto2;
}



public String getAcpsReviewPhoto3() {
	return acpsReviewPhoto3;
}



public void setAcpsReviewPhoto3(String acpsReviewPhoto3) {
	this.acpsReviewPhoto3 = acpsReviewPhoto3;
}



public String getAcpsDelNy() {
	return acpsDelNy;
}



public void setAcpsDelNy(String acpsDelNy) {
	this.acpsDelNy = acpsDelNy;
}



public String getShMemberOption() {
	return shMemberOption;
}



public void setShMemberOption(String shMemberOption) {
	this.shMemberOption = shMemberOption;
}



public String getShMemberValue() {
	return shMemberValue;
}



public void setShMemberValue(String shMemberValue) {
	this.shMemberValue = shMemberValue;
}



}