package com.junefw.infra.modules.member;

public class Member {
	
	
	/* infrmember */
	private int ifmmSeq;
	private String ifmmAdminNy="";
	private String ifmmId = "";
	private String ifmmName= "";
	private char ifmmNickname;
	private int ifmmGrade;
	private String ifmmDob="";
	private String ifmmPhoto="";
	private String ifmmpassword="";
	private String ifmmPwdModDate="";
	private String ifmmGenderCd="";
	private String ifmmSaveCd="";
	private String ifmmMarriageCd="";
	private String ifmmMarriageDate="";
	private String ifmmChildrenNum="";
	private String ifmmFavoriteColor="";
	private String ifmmRecommenderSeq="";
	private String ifmmEmailConsentNy="";
	private String ifmmSmsConsentNy="";
	private String ifmmPushConsentNy="";
	private String ifmmDormancyNy="";
	private String ifmmDelNY="";
	private String regIp="";
	private String regSeq="";
	private String regDevice="";
	private String regDateTime="";
	private String regDateTimeSvr="";
	private String modIp="";
	private String modSeq="";
	private String modDevice="";
	private String modDateTime="";
	private String modDateTimeSvr="";
	
	/* infrmemberphone */
	private int ifmpSeq;
	private String ifmpDefaultNy="";
	private String ifmpTypeCd="";
	private String ifmpDeviceCd="";
	private String ifmpTelecomCd="";
	private String ifmpNumber="";
	private String ifmpDelNY="";
		
	
	/* infrmemberemail */
	private int ifmeSeq;
	private String ifmeDefaultNy="";
	private String ifmeTypeCd="";
	private String ifmeEmailFull="";
	private String ifmeEmailAccount="";
	private String ifmeEmailDomain="";
	private String ifmeEmailDomainCd="";
	private String ifmeDelNY="";

	/*infrmemberaddress*/
	private int ifmaSeq;
	private String ifmaDefaultNy="";
	private String ifmaTypeCd="";
	private String ifmaTitle="";
	private String ifmaAddress1="";
	private String ifmaAddress2="";
	private String ifmaZipcode="";
	private String ifmaDelNY="";
	
	/*infrmemberaddressonline*/
	private int ifaoSeq;
	private String ifaoTypeCd="";
	private String ifaoDefaultNy="";
	private String ifaoSnsTypeCd="";
	private String ifaoUrl="";
	private String ifaoTitle="";
	
	/*infrmemberhobby*/
	private int ifmhSeq;
	private String ifmhHobbyCd="";
	private String ifmhUseNy="";
	private String ifmhOrder="";
	private String ifmhDelNY="";
	
	/*infrmemberjoinqna*/
	private int ifjqSeq;
	private String ifjqQuestionCd="";
	private String ifjqAnswer="";
	private String ifjqDelNY="";
	
	/*infrmembernationality*/
	private int ifmnSeq;
	private String ifmnDefaultNy="";
	private String ifmnDelNY="";
	
	/*infrnationality*/
	private int ifnaSeq;
	private String ifnaName="";
	private String ifnaNameKor="";
	private String ifnaNameEng="";
	private String ifnaCode2Char="";
	private String ifnaCode3Char="";
	private String ifnaUseNy="";
	private String ifnaOrder="";
	private String ifnaDesc="";
	private String ifnaDelNY="";
	
	
	
	
	public int getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(int ifmmSeq) {
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
	public char getIfmmNickname() {
		return ifmmNickname;
	}
	public void setIfmmNickname(char ifmmNickname) {
		this.ifmmNickname = ifmmNickname;
	}
	public int getIfmmGrade() {
		return ifmmGrade;
	}
	public void setIfmmGrade(int ifmmGrade) {
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
	public String getIfmmpassword() {
		return ifmmpassword;
	}
	public void setIfmmpassword(String ifmmpassword) {
		this.ifmmpassword = ifmmpassword;
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
	public int getIfmpSeq() {
		return ifmpSeq;
	}
	public void setIfmpSeq(int ifmpSeq) {
		this.ifmpSeq = ifmpSeq;
	}
	public String getIfmpDefaultNy() {
		return ifmpDefaultNy;
	}
	public void setIfmpDefaultNy(String ifmpDefaultNy) {
		this.ifmpDefaultNy = ifmpDefaultNy;
	}
	public String getIfmpTypeCd() {
		return ifmpTypeCd;
	}
	public void setIfmpTypeCd(String ifmpTypeCd) {
		this.ifmpTypeCd = ifmpTypeCd;
	}
	public String getIfmpDeviceCd() {
		return ifmpDeviceCd;
	}
	public void setIfmpDeviceCd(String ifmpDeviceCd) {
		this.ifmpDeviceCd = ifmpDeviceCd;
	}
	public String getIfmpTelecomCd() {
		return ifmpTelecomCd;
	}
	public void setIfmpTelecomCd(String ifmpTelecomCd) {
		this.ifmpTelecomCd = ifmpTelecomCd;
	}
	public String getIfmpNumber() {
		return ifmpNumber;
	}
	public void setIfmpNumber(String ifmpNumber) {
		this.ifmpNumber = ifmpNumber;
	}
	public String getIfmpDelNY() {
		return ifmpDelNY;
	}
	public void setIfmpDelNY(String ifmpDelNY) {
		this.ifmpDelNY = ifmpDelNY;
	}
	public int getIfmeSeq() {
		return ifmeSeq;
	}
	public void setIfmeSeq(int ifmeSeq) {
		this.ifmeSeq = ifmeSeq;
	}
	public String getIfmeDefaultNy() {
		return ifmeDefaultNy;
	}
	public void setIfmeDefaultNy(String ifmeDefaultNy) {
		this.ifmeDefaultNy = ifmeDefaultNy;
	}
	public String getIfmeTypeCd() {
		return ifmeTypeCd;
	}
	public void setIfmeTypeCd(String ifmeTypeCd) {
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
	public String getIfmeEmailDomainCd() {
		return ifmeEmailDomainCd;
	}
	public void setIfmeEmailDomainCd(String ifmeEmailDomainCd) {
		this.ifmeEmailDomainCd = ifmeEmailDomainCd;
	}
	public String getIfmeDelNY() {
		return ifmeDelNY;
	}
	public void setIfmeDelNY(String ifmeDelNY) {
		this.ifmeDelNY = ifmeDelNY;
	}
	public int getIfmaSeq() {
		return ifmaSeq;
	}
	public void setIfmaSeq(int ifmaSeq) {
		this.ifmaSeq = ifmaSeq;
	}
	public String getIfmaDefaultNy() {
		return ifmaDefaultNy;
	}
	public void setIfmaDefaultNy(String ifmaDefaultNy) {
		this.ifmaDefaultNy = ifmaDefaultNy;
	}
	public String getIfmaTypeCd() {
		return ifmaTypeCd;
	}
	public void setIfmaTypeCd(String ifmaTypeCd) {
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
	public String getIfmaDelNY() {
		return ifmaDelNY;
	}
	public void setIfmaDelNY(String ifmaDelNY) {
		this.ifmaDelNY = ifmaDelNY;
	}
	public int getIfaoSeq() {
		return ifaoSeq;
	}
	public void setIfaoSeq(int ifaoSeq) {
		this.ifaoSeq = ifaoSeq;
	}
	public String getIfaoTypeCd() {
		return ifaoTypeCd;
	}
	public void setIfaoTypeCd(String ifaoTypeCd) {
		this.ifaoTypeCd = ifaoTypeCd;
	}
	public String getIfaoDefaultNy() {
		return ifaoDefaultNy;
	}
	public void setIfaoDefaultNy(String ifaoDefaultNy) {
		this.ifaoDefaultNy = ifaoDefaultNy;
	}
	public String getIfaoSnsTypeCd() {
		return ifaoSnsTypeCd;
	}
	public void setIfaoSnsTypeCd(String ifaoSnsTypeCd) {
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
	public int getIfmhSeq() {
		return ifmhSeq;
	}
	public void setIfmhSeq(int ifmhSeq) {
		this.ifmhSeq = ifmhSeq;
	}
	public String getIfmhHobbyCd() {
		return ifmhHobbyCd;
	}
	public void setIfmhHobbyCd(String ifmhHobbyCd) {
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
	public String getIfmhDelNY() {
		return ifmhDelNY;
	}
	public void setIfmhDelNY(String ifmhDelNY) {
		this.ifmhDelNY = ifmhDelNY;
	}
	public int getIfjqSeq() {
		return ifjqSeq;
	}
	public void setIfjqSeq(int ifjqSeq) {
		this.ifjqSeq = ifjqSeq;
	}
	public String getIfjqQuestionCd() {
		return ifjqQuestionCd;
	}
	public void setIfjqQuestionCd(String ifjqQuestionCd) {
		this.ifjqQuestionCd = ifjqQuestionCd;
	}
	public String getIfjqAnswer() {
		return ifjqAnswer;
	}
	public void setIfjqAnswer(String ifjqAnswer) {
		this.ifjqAnswer = ifjqAnswer;
	}
	public String getIfjqDelNY() {
		return ifjqDelNY;
	}
	public void setIfjqDelNY(String ifjqDelNY) {
		this.ifjqDelNY = ifjqDelNY;
	}
	public int getIfmnSeq() {
		return ifmnSeq;
	}
	public void setIfmnSeq(int ifmnSeq) {
		this.ifmnSeq = ifmnSeq;
	}
	public String getIfmnDefaultNy() {
		return ifmnDefaultNy;
	}
	public void setIfmnDefaultNy(String ifmnDefaultNy) {
		this.ifmnDefaultNy = ifmnDefaultNy;
	}
	public String getIfmnDelNY() {
		return ifmnDelNY;
	}
	public void setIfmnDelNY(String ifmnDelNY) {
		this.ifmnDelNY = ifmnDelNY;
	}
	public int getIfnaSeq() {
		return ifnaSeq;
	}
	public void setIfnaSeq(int ifnaSeq) {
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
	public String getIfnaUseNy() {
		return ifnaUseNy;
	}
	public void setIfnaUseNy(String ifnaUseNy) {
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
	public String getIfnaDelNY() {
		return ifnaDelNY;
	}
	public void setIfnaDelNY(String ifnaDelNY) {
		this.ifnaDelNY = ifnaDelNY;
	}

}
	//-------------------------------------------
	
	
	