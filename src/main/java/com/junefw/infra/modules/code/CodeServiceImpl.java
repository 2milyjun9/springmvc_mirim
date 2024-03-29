package com.junefw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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
	//	 dao.insertCode(dto); // ifcgname, ifcdname, ifcdSeq
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

	@Override
	public int delete(CodeVo vo) throws Exception {
		return dao.delete(vo);
		}
	@Override
	public int updateDelete(CodeVo vo) throws Exception {
		return dao.updateDelete(vo);
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
	@Override
	public int deleteCode(CodeVo vo) throws Exception {
		return dao.deleteCode(vo);
		}
	@Override
	public int updateDeleteCode(CodeVo vo) throws Exception {
		return dao.updateDeleteCode(vo);
		}

	@PostConstruct
	public void selectListForCache(){
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListForCache();
		Code.cachedCodeArrayList.clear();							//메모리에 있는 리스트 클리어
		Code.cachedCodeArrayList.addAll(codeListFromDb);			//메모리에 리스트를 만들어준다.
		
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}

	public static List<Code> selectListCachedCode(String ifcgSeq) throws Exception{ 
	List<Code> rt = new ArrayList<Code>(); 
	for(Code codeRow : Code.cachedCodeArrayList) { 
	if(codeRow.getIfcgSeq().equals(ifcgSeq)) {
	 rt.add(codeRow); 
	 }else {
	 } 
	} 
	return rt; 
	 }
	
	
	
	}


