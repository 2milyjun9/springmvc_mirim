package com.junefw.infra.modules.member;

import java.util.Date;

public class MemberVo {


	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}
	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}


	//common
	private String shMemberOption;
	private String shMemberValue;

	// infrMember Search
	private String shIfmmDelNy;
	private String shIfmmName;
	private String shIfmmDormancyNy;
	
	private Integer ShMemberOptionDate;
	private String ShMemberDateEnd;
	private String ShMemberDateStart;
	
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
		
		
		if (thisPage == 1  || thisPage == 0 ) {
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


//선택삭제
private String[] checkboxSeqArray;


/* infrmember */
private String ifmmSeq;
private Integer ifmmAdminNy;
private Integer ifmmDormancyNy;
private String ifmmName;
private String ifmmPhoto;
private String ifmmId ;
private String ifmmNickname;
private Integer ifmmGrade;
private String ifmmDob;
private String ifmmPassword;
private Date ifmmPwdModDate;
private Integer ifmmGenderCd;
private String ifmmSaveCd;
private Integer ifmmMarriageCd;
private String ifmmMarriageDate;
private Integer ifmmChildrenNum;
private String ifmmFavoriteColor;
private String ifmmRecommenderSeq;
private Integer ifmmEmailConsentNy;
private Integer ifmmSmsConsentNy;
private Integer ifmmPushConsentNy;
private Integer ifmmDelNy;


/* infrmemberphone */
private String ifmpSeq;
private Integer ifmpDefaultNy;
private Integer ifmpTypeCd;
private Integer ifmpDeviceCd;
private Integer ifmpTelecomCd;
private String ifmpNumber;
private String ifmpDelNy;
	

/* infrmemberemail */
private String ifmeSeq;
private Integer ifmeDefaultNy;
private Integer ifmeTypeCd;
private String ifmeEmailFull;
private String ifmeEmailAccount;
private String ifmeEmailDomain;
private Integer ifmeEmailDomainCd;
private Integer ifmeDelNy;

/*infrmemberaddress*/
private String ifmaSeq;
private Integer ifmaDefaultNy;
private Integer ifmaTypeCd;
private String ifmaTitle;
private String ifmaAddress1;
private String ifmaAddress2;
private String ifmaZipcode;
private Integer ifmaDelNy;

/*infrmemberaddressonline*/
private Integer ifaoSeq;
private Integer ifaoTypeCd;;
private Integer ifaoDefaultNy;
private Integer ifaoSnsTypeCd;
private String ifaoUrl;
private String ifaoTitle;
private Integer ifaoDelNy;

/*infrmemberhobby*/
private Integer ifmhSeq;
private Integer ifmhHobbyCd;
private String ifmhUseNy;
private String ifmhOrder;
private Integer ifmhDelNy;

/*infrmemberjoinqna*/
private Integer ifjqSeq;
private Integer ifjqQuestionCd;
private String ifjqAnswer;
private Integer ifjqDelNy;

/*infrmembernationality*/
private Integer ifmnSeq;
private Integer ifmnDefaultNy;
private Integer ifmnDelNy;

/*infrnationality*/
private Integer ifnaSeq;
private String ifnaName;
private String ifnaNameKor;
private String ifnaNameEng;
private String ifnaCode2Char;
private String ifnaCode3Char;
private Integer ifnaUseNy;
private String ifnaOrder;
private String ifnaDesc;
private Integer ifnaDelNy;



public String getShIfmmDelNy() {
	return shIfmmDelNy;
}
public void setShIfmmDelNy(String shIfmmDelNy) {
	this.shIfmmDelNy = shIfmmDelNy;
}
public String getShIfmmName() {
	return shIfmmName;
}
public void setShIfmmName(String shIfmmName) {
	this.shIfmmName = shIfmmName;
}
public String getShIfmmDormancyNy() {
	return shIfmmDormancyNy;
}
public void setShIfmmDormancyNy(String shIfmmDormancyNy) {
	this.shIfmmDormancyNy = shIfmmDormancyNy;
}
public Integer getShMemberOptionDate() {
	return ShMemberOptionDate;
}
public void setShMemberOptionDate(Integer shMemberOptionDate) {
	ShMemberOptionDate = shMemberOptionDate;
}
public String getShMemberDateEnd() {
	return ShMemberDateEnd;
}
public void setShMemberDateEnd(String shMemberDateEnd) {
	ShMemberDateEnd = shMemberDateEnd;
}
public String getShMemberDateStart() {
	return ShMemberDateStart;
}
public void setShMemberDateStart(String shMemberDateStart) {
	ShMemberDateStart = shMemberDateStart;
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
public Integer getIfmmAdminNy() {
	return ifmmAdminNy;
}
public void setIfmmAdminNy(Integer ifmmAdminNy) {
	this.ifmmAdminNy = ifmmAdminNy;
}
public Integer getIfmmDormancyNy() {
	return ifmmDormancyNy;
}
public void setIfmmDormancyNy(Integer ifmmDormancyNy) {
	this.ifmmDormancyNy = ifmmDormancyNy;
}
public String getIfmmName() {
	return ifmmName;
}
public void setIfmmName(String ifmmName) {
	this.ifmmName = ifmmName;
}
public String getIfmmPhoto() {
	return ifmmPhoto;
}
public void setIfmmPhoto(String ifmmPhoto) {
	this.ifmmPhoto = ifmmPhoto;
}
public String getIfmmId() {
	return ifmmId;
}
public void setIfmmId(String ifmmId) {
	this.ifmmId = ifmmId;
}
public String getIfmmNickname() {
	return ifmmNickname;
}
public void setIfmmNickname(String ifmmNickname) {
	this.ifmmNickname = ifmmNickname;
}
public Integer getIfmmGrade() {
	return ifmmGrade;
}
public void setIfmmGrade(Integer ifmmGrade) {
	this.ifmmGrade = ifmmGrade;
}
public String getIfmmDob() {
	return ifmmDob;
}
public void setIfmmDob(String ifmmDob) {
	this.ifmmDob = ifmmDob;
}
public String getIfmmPassword() {
	return ifmmPassword;
}
public void setIfmmPassword(String ifmmPassword) {
	this.ifmmPassword = ifmmPassword;
}
public Date getIfmmPwdModDate() {
	return ifmmPwdModDate;
}
public void setIfmmPwdModDate(Date ifmmPwdModDate) {
	this.ifmmPwdModDate = ifmmPwdModDate;
}
public Integer getIfmmGenderCd() {
	return ifmmGenderCd;
}
public void setIfmmGenderCd(Integer ifmmGenderCd) {
	this.ifmmGenderCd = ifmmGenderCd;
}
public String getIfmmSaveCd() {
	return ifmmSaveCd;
}
public void setIfmmSaveCd(String ifmmSaveCd) {
	this.ifmmSaveCd = ifmmSaveCd;
}
public Integer getIfmmMarriageCd() {
	return ifmmMarriageCd;
}
public void setIfmmMarriageCd(Integer ifmmMarriageCd) {
	this.ifmmMarriageCd = ifmmMarriageCd;
}
public String getIfmmMarriageDate() {
	return ifmmMarriageDate;
}
public void setIfmmMarriageDate(String ifmmMarriageDate) {
	this.ifmmMarriageDate = ifmmMarriageDate;
}
public Integer getIfmmChildrenNum() {
	return ifmmChildrenNum;
}
public void setIfmmChildrenNum(Integer ifmmChildrenNum) {
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
public Integer getIfmmEmailConsentNy() {
	return ifmmEmailConsentNy;
}
public void setIfmmEmailConsentNy(Integer ifmmEmailConsentNy) {
	this.ifmmEmailConsentNy = ifmmEmailConsentNy;
}
public Integer getIfmmSmsConsentNy() {
	return ifmmSmsConsentNy;
}
public void setIfmmSmsConsentNy(Integer ifmmSmsConsentNy) {
	this.ifmmSmsConsentNy = ifmmSmsConsentNy;
}
public Integer getIfmmPushConsentNy() {
	return ifmmPushConsentNy;
}
public void setIfmmPushConsentNy(Integer ifmmPushConsentNy) {
	this.ifmmPushConsentNy = ifmmPushConsentNy;
}
public Integer getIfmmDelNy() {
	return ifmmDelNy;
}
public void setIfmmDelNy(Integer ifmmDelNy) {
	this.ifmmDelNy = ifmmDelNy;
}
public String getIfmpSeq() {
	return ifmpSeq;
}
public void setIfmpSeq(String ifmpSeq) {
	this.ifmpSeq = ifmpSeq;
}
public Integer getIfmpDefaultNy() {
	return ifmpDefaultNy;
}
public void setIfmpDefaultNy(Integer ifmpDefaultNy) {
	this.ifmpDefaultNy = ifmpDefaultNy;
}
public Integer getIfmpTypeCd() {
	return ifmpTypeCd;
}
public void setIfmpTypeCd(Integer ifmpTypeCd) {
	this.ifmpTypeCd = ifmpTypeCd;
}
public Integer getIfmpDeviceCd() {
	return ifmpDeviceCd;
}
public void setIfmpDeviceCd(Integer ifmpDeviceCd) {
	this.ifmpDeviceCd = ifmpDeviceCd;
}
public Integer getIfmpTelecomCd() {
	return ifmpTelecomCd;
}
public void setIfmpTelecomCd(Integer ifmpTelecomCd) {
	this.ifmpTelecomCd = ifmpTelecomCd;
}
public String getIfmpNumber() {
	return ifmpNumber;
}
public void setIfmpNumber(String ifmpNumber) {
	this.ifmpNumber = ifmpNumber;
}
public String getIfmpDelNy() {
	return ifmpDelNy;
}
public void setIfmpDelNy(String ifmpDelNy) {
	this.ifmpDelNy = ifmpDelNy;
}
public String getIfmeSeq() {
	return ifmeSeq;
}
public void setIfmeSeq(String ifmeSeq) {
	this.ifmeSeq = ifmeSeq;
}
public Integer getIfmeDefaultNy() {
	return ifmeDefaultNy;
}
public void setIfmeDefaultNy(Integer ifmeDefaultNy) {
	this.ifmeDefaultNy = ifmeDefaultNy;
}
public Integer getIfmeTypeCd() {
	return ifmeTypeCd;
}
public void setIfmeTypeCd(Integer ifmeTypeCd) {
	this.ifmeTypeCd = ifmeTypeCd;
}
public String getIfmeEmailFull() {
	return ifmeEmailFull;
}
public void setIfmeEmailFull(String ifmeEmailFull) {
	this.ifmeEmailFull = ifmeEmailFull;
}
public String getIfmeEmailAccount() {
	return ifmeEmailAccount;
}
public void setIfmeEmailAccount(String ifmeEmailAccount) {
	this.ifmeEmailAccount = ifmeEmailAccount;
}
public String getIfmeEmailDomain() {
	return ifmeEmailDomain;
}
public void setIfmeEmailDomain(String ifmeEmailDomain) {
	this.ifmeEmailDomain = ifmeEmailDomain;
}
public Integer getIfmeEmailDomainCd() {
	return ifmeEmailDomainCd;
}
public void setIfmeEmailDomainCd(Integer ifmeEmailDomainCd) {
	this.ifmeEmailDomainCd = ifmeEmailDomainCd;
}
public Integer getIfmeDelNy() {
	return ifmeDelNy;
}
public void setIfmeDelNy(Integer ifmeDelNy) {
	this.ifmeDelNy = ifmeDelNy;
}
public String getIfmaSeq() {
	return ifmaSeq;
}
public void setIfmaSeq(String ifmaSeq) {
	this.ifmaSeq = ifmaSeq;
}
public Integer getIfmaDefaultNy() {
	return ifmaDefaultNy;
}
public void setIfmaDefaultNy(Integer ifmaDefaultNy) {
	this.ifmaDefaultNy = ifmaDefaultNy;
}
public Integer getIfmaTypeCd() {
	return ifmaTypeCd;
}
public void setIfmaTypeCd(Integer ifmaTypeCd) {
	this.ifmaTypeCd = ifmaTypeCd;
}
public String getIfmaTitle() {
	return ifmaTitle;
}
public void setIfmaTitle(String ifmaTitle) {
	this.ifmaTitle = ifmaTitle;
}
public String getIfmaAddress1() {
	return ifmaAddress1;
}
public void setIfmaAddress1(String ifmaAddress1) {
	this.ifmaAddress1 = ifmaAddress1;
}
public String getIfmaAddress2() {
	return ifmaAddress2;
}
public void setIfmaAddress2(String ifmaAddress2) {
	this.ifmaAddress2 = ifmaAddress2;
}
public String getIfmaZipcode() {
	return ifmaZipcode;
}
public void setIfmaZipcode(String ifmaZipcode) {
	this.ifmaZipcode = ifmaZipcode;
}
public Integer getIfmaDelNy() {
	return ifmaDelNy;
}
public void setIfmaDelNy(Integer ifmaDelNy) {
	this.ifmaDelNy = ifmaDelNy;
}
public Integer getIfaoSeq() {
	return ifaoSeq;
}
public void setIfaoSeq(Integer ifaoSeq) {
	this.ifaoSeq = ifaoSeq;
}
public Integer getIfaoTypeCd() {
	return ifaoTypeCd;
}
public void setIfaoTypeCd(Integer ifaoTypeCd) {
	this.ifaoTypeCd = ifaoTypeCd;
}
public Integer getIfaoDefaultNy() {
	return ifaoDefaultNy;
}
public void setIfaoDefaultNy(Integer ifaoDefaultNy) {
	this.ifaoDefaultNy = ifaoDefaultNy;
}
public Integer getIfaoSnsTypeCd() {
	return ifaoSnsTypeCd;
}
public void setIfaoSnsTypeCd(Integer ifaoSnsTypeCd) {
	this.ifaoSnsTypeCd = ifaoSnsTypeCd;
}
public String getIfaoUrl() {
	return ifaoUrl;
}
public void setIfaoUrl(String ifaoUrl) {
	this.ifaoUrl = ifaoUrl;
}
public String getIfaoTitle() {
	return ifaoTitle;
}
public void setIfaoTitle(String ifaoTitle) {
	this.ifaoTitle = ifaoTitle;
}
public Integer getIfaoDelNy() {
	return ifaoDelNy;
}
public void setIfaoDelNy(Integer ifaoDelNy) {
	this.ifaoDelNy = ifaoDelNy;
}
public Integer getIfmhSeq() {
	return ifmhSeq;
}
public void setIfmhSeq(Integer ifmhSeq) {
	this.ifmhSeq = ifmhSeq;
}
public Integer getIfmhHobbyCd() {
	return ifmhHobbyCd;
}
public void setIfmhHobbyCd(Integer ifmhHobbyCd) {
	this.ifmhHobbyCd = ifmhHobbyCd;
}
public String getIfmhUseNy() {
	return ifmhUseNy;
}
public void setIfmhUseNy(String ifmhUseNy) {
	this.ifmhUseNy = ifmhUseNy;
}
public String getIfmhOrder() {
	return ifmhOrder;
}
public void setIfmhOrder(String ifmhOrder) {
	this.ifmhOrder = ifmhOrder;
}
public Integer getIfmhDelNy() {
	return ifmhDelNy;
}
public void setIfmhDelNy(Integer ifmhDelNy) {
	this.ifmhDelNy = ifmhDelNy;
}
public Integer getIfjqSeq() {
	return ifjqSeq;
}
public void setIfjqSeq(Integer ifjqSeq) {
	this.ifjqSeq = ifjqSeq;
}
public Integer getIfjqQuestionCd() {
	return ifjqQuestionCd;
}
public void setIfjqQuestionCd(Integer ifjqQuestionCd) {
	this.ifjqQuestionCd = ifjqQuestionCd;
}
public String getIfjqAnswer() {
	return ifjqAnswer;
}
public void setIfjqAnswer(String ifjqAnswer) {
	this.ifjqAnswer = ifjqAnswer;
}
public Integer getIfjqDelNy() {
	return ifjqDelNy;
}
public void setIfjqDelNy(Integer ifjqDelNy) {
	this.ifjqDelNy = ifjqDelNy;
}
public Integer getIfmnSeq() {
	return ifmnSeq;
}
public void setIfmnSeq(Integer ifmnSeq) {
	this.ifmnSeq = ifmnSeq;
}
public Integer getIfmnDefaultNy() {
	return ifmnDefaultNy;
}
public void setIfmnDefaultNy(Integer ifmnDefaultNy) {
	this.ifmnDefaultNy = ifmnDefaultNy;
}
public Integer getIfmnDelNy() {
	return ifmnDelNy;
}
public void setIfmnDelNy(Integer ifmnDelNy) {
	this.ifmnDelNy = ifmnDelNy;
}
public Integer getIfnaSeq() {
	return ifnaSeq;
}
public void setIfnaSeq(Integer ifnaSeq) {
	this.ifnaSeq = ifnaSeq;
}
public String getIfnaName() {
	return ifnaName;
}
public void setIfnaName(String ifnaName) {
	this.ifnaName = ifnaName;
}
public String getIfnaNameKor() {
	return ifnaNameKor;
}
public void setIfnaNameKor(String ifnaNameKor) {
	this.ifnaNameKor = ifnaNameKor;
}
public String getIfnaNameEng() {
	return ifnaNameEng;
}
public void setIfnaNameEng(String ifnaNameEng) {
	this.ifnaNameEng = ifnaNameEng;
}
public String getIfnaCode2Char() {
	return ifnaCode2Char;
}
public void setIfnaCode2Char(String ifnaCode2Char) {
	this.ifnaCode2Char = ifnaCode2Char;
}
public String getIfnaCode3Char() {
	return ifnaCode3Char;
}
public void setIfnaCode3Char(String ifnaCode3Char) {
	this.ifnaCode3Char = ifnaCode3Char;
}
public Integer getIfnaUseNy() {
	return ifnaUseNy;
}
public void setIfnaUseNy(Integer ifnaUseNy) {
	this.ifnaUseNy = ifnaUseNy;
}
public String getIfnaOrder() {
	return ifnaOrder;
}
public void setIfnaOrder(String ifnaOrder) {
	this.ifnaOrder = ifnaOrder;
}
public String getIfnaDesc() {
	return ifnaDesc;
}
public void setIfnaDesc(String ifnaDesc) {
	this.ifnaDesc = ifnaDesc;
}
public Integer getIfnaDelNy() {
	return ifnaDelNy;
}
public void setIfnaDelNy(Integer ifnaDelNy) {
	this.ifnaDelNy = ifnaDelNy;
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