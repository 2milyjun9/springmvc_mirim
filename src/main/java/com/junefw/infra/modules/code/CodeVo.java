package com.junefw.infra.modules.code;

public class CodeVo {
	
	//조건검색할떈 여기, 저장은 기본 코드.java파일 
	//VO  (셀렉의 where의 부분정도로 생각하면됨)
	private String ifcgSeq;
	
	private String ifcdSeq;

	//------------

	
	public String getIfcgSeq() {
		return ifcgSeq;
	}

	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}

	public String getIfcdSeq() {
		return ifcdSeq;
	}

	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}


	
	


}