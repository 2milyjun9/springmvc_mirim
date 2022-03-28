package com.junefw.infra.modules.member;

import java.util.Date;


/*@SuppressWarnings("all")*/
public class Member /* extends Base */ {
	

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
	public Integer getRegDevice() {
		return regDevice;
	}
	public void setRegDevice(Integer regDevice) {
		this.regDevice = regDevice;
	}
	public Date getRegDateTimeSvr() {
		return regDateTimeSvr;
	}
	public void setRegDateTimeSvr(Date regDateTimeSvr) {
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
	public Integer getModDevice() {
		return modDevice;
	}
	public void setModDevice(Integer modDevice) {
		this.modDevice = modDevice;
	}
	public Date getModDateTimeSvr() {
		return modDateTimeSvr;
	}
	public void setModDateTimeSvr(Date modDateTimeSvr) {
		this.modDateTimeSvr = modDateTimeSvr;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
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
	
	
	private String regIp;
	private String regSeq;
	private Integer regDevice;
	private Date regDateTime;
	private Date regDateTimeSvr;
	private String modIp;
	private String modSeq;
	private Integer modDevice;
	private Date modDateTime;
	private Date modDateTimeSvr;

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
	public void setRegDateTime(Date nowDate) {
		// TODO Auto-generated method stub
		
	}
	public void setModDateTime(Date nowDate) {
		// TODO Auto-generated method stub
		
	}


	
}