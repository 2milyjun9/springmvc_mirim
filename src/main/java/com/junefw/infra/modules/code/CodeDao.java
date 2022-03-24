package com.junefw.infra.modules.code;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	
	@Inject
	//	@Resource(name = "sqlSession")

	private SqlSession sqlSession;
	private static String namespace = "com.junefw.infra.modules.code.CodeMpp";
	
	//코드그룹
	public int selectOneCount(CodeVo vo){return sqlSession.selectOne(namespace+".selectOneCount", vo);}
	public List<Code> selectList(CodeVo vo){ //코드객체 묶은 리스트 
		 return sqlSession.selectList(namespace + ".selectList", vo);}
	/*	public List<Code> selectList(CodeVo vo) 
	{ List<Code> list=sqlSession.selectList(namespace + ".selectList", "");return list;}  */
	public int insert(Code dto) { return sqlSession.insert(namespace+ ".insert", dto);}
	// 코드객체 하나
	public Code selectOne(CodeVo vo){return sqlSession.selectOne(namespace+".selectOne", vo);}
	public int update(Code dto) { return sqlSession.update(namespace+ ".update", dto);}
	//진짜삭제
	public int delete(CodeVo vo) { return sqlSession.delete(namespace+ ".delete", vo);}
	//가짜삭제
	public int updateDelete(CodeVo vo) { return sqlSession.update(namespace + ".updateDelete", vo); }
	

	
	//코드
	public int selectOneCodeCount(CodeVo vo){return sqlSession.selectOne(namespace+".selectOneCodeCount", vo);}
	public List<Code> selectListCode(CodeVo vo)
	{ List<Code> list=sqlSession.selectList(namespace + ".selectListCode", vo); return list;}
	public int insertCode(Code dto) { return sqlSession.insert(namespace+ ".insertCode", dto);}
	public Code selectOneCode(CodeVo vo){return sqlSession.selectOne(namespace+".selectOneCode", vo);}
	public int updateCode(Code dto) { return sqlSession.update(namespace+ ".updateCode", dto);}
	//진짜삭제
	public int deleteCode(CodeVo vo) { return sqlSession.delete(namespace+ ".deleteCode", vo);}
	//가짜삭제
	public int updateDeleteCode(CodeVo vo) { return sqlSession.update(namespace + ".updateDeleteCode", vo); }
	
	 public List<Code> selectListForCache()
	 {return sqlSession.selectList(namespace + ".selectListForCache", "");}
}
	

