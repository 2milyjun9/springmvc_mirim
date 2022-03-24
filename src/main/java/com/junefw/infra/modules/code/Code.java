package com.junefw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	
	
	public String getIfcdUseNy() {
		return ifcdUseNy;
	}
	public void setIfcdUseNy(String ifcdUseNy) {
		this.ifcdUseNy = ifcdUseNy;
	}
	private String ifcgSeq;
	private String ifcgName;
	private String ifcgNameEng;
	private String ifcgDelNy;
	
	private String ifcdSeq;
	private String ifcdName;
	private String ifcdDelNy;
	private String ifcdUseNy;
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();	//메모리에 리스트가 상주돼있음
	
//------------
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	public String getIfcgName() {
		return ifcgName;
	}
	public void setIfcgName(String ifcgName) {
		this.ifcgName = ifcgName;
	}
	public String getIfcgDelNy() {
		return ifcgDelNy;
	}
	public void setIfcgDelNy(String ifcgDelNy) {
		this.ifcgDelNy = ifcgDelNy;
	}
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public String getIfcdDelNy() {
		return ifcdDelNy;
	}
	public void setIfcdDelNy(String ifcdDelNy) {
		this.ifcdDelNy = ifcdDelNy;
	}
	public String getIfcgNameEng() {
		return ifcgNameEng;
	}
	public void setIfcgNameEng(String ifcgNameEng) {
		this.ifcgNameEng = ifcgNameEng;
	}

	
	//------------
	

}