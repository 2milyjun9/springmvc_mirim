package com.junefw.infra.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MainServiceImpl implements MainService{

	@Autowired
	MainDao dao;
	
	/*
	 * //코드그룹
	 * 
	 * @Override public int selectOneCount(MainVo vo) throws Exception { return
	 * dao.selectOneCount(vo); }
	 * 
	 * @Override public List<Main> selectList(MainVo vo) throws Exception { return
	 * dao.selectList(vo); }
	 * 
	 * @Override public int insert(Main dto) throws Exception { dao.insert(dto); //
	 * ifcgname, ifcdname dao.insertCode(dto); // ifcgname, ifcdname, ifcdSeq return
	 * 1; }
	 * 
	 * @Override public Main selectOne(MainVo vo) throws Exception { return
	 * dao.selectOne(vo); }
	 * 
	 * @Override public int update(Main dto) throws Exception { return
	 * dao.update(dto); }
	 */

}

