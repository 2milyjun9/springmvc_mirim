package com.junefw.infra.modules.code;

public class CodeVo {
	
	//조건검색할떈 여기, 저장은 기본 코드.java파일 
	//VO  (셀렉의 where의 부분정도로 생각하면됨)
	
	//infrCodeGroup
	private String ifcgSeq;
	
	//infrCodeGroup Search
	private String shIfcgName;  
	private Integer shIfcgDelNy;  
	
	//infrCode
	private String ifcdSeq;
	
	//infrCode Search
	private String shIfcgSeq;
	
	//--------------------------------------------------------------------------------

	public String getIfcgSeq() {
		return ifcgSeq;
	}

	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}

	public String getShIfcgName() {
		return shIfcgName;
	}

	public void setShIfcgName(String shIfcgName) {
		this.shIfcgName = shIfcgName;
	}

	public String getIfcdSeq() {
		return ifcdSeq;
	}

	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}

	public Integer getShIfcgDelNy() {
		return shIfcgDelNy;
	}

	public void setShIfcgDelNy(Integer shIfcgDelNy) {
		this.shIfcgDelNy = shIfcgDelNy;
	}

	public String getShIfcgSeq() {
		return shIfcgSeq;
	}

	public void setShIfcgSeq(String shIfcgSeq) {
		this.shIfcgSeq = shIfcgSeq;
	}
	
	
	

	//------------


	


}