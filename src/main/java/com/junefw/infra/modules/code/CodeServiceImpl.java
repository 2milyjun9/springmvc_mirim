package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;
	
	//코드그룹
	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo); 
		}
	@Override
	public int insert(Code dto) throws Exception {
		 dao.insert(dto);   // ifcgname, ifcdname
		 dao.insertCode(dto); // ifcgname, ifcdname, ifcdSeq
		 return 1;
		}
	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		return dao.selectOne(vo);
		}
	@Override
	public int update(Code dto) throws Exception {
		return dao.update(dto);
		}

	//코드
	@Override
	public int selectOneCodeCount(CodeVo vo) throws Exception {
		return dao.selectOneCodeCount(vo);
	}
	@Override
	public List<Code> selectListCode(CodeVo vo) throws Exception {
		return dao.selectListCode(vo);
		}
	@Override
	public int insertCode(Code dto) throws Exception {
		return dao.insertCode(dto);
		}
	@Override
	public Code selectOneCode(CodeVo vo) throws Exception {
		return dao.selectOneCode(vo);
		}
	@Override
	public int updateCode(Code dto) throws Exception {
		return dao.updateCode(dto);
		}

	

}

