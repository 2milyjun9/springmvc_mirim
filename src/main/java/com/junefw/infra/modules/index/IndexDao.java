package com.junefw.infra.modules.index;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class IndexDao {
	
	/*@Inject
	//	@Resource(name = "sqlSession")

	private SqlSession sqlSession;
	private static String namespace = "com.junefw.infra.modules.code.CodeMpp";

	public int selectOneCount(MainVo vo){return sqlSession.selectOne(namespace+".selectOneCount", vo);}
	public List<Main> selectList(MainVo vo){ //코드객체 묶은 리스트 
		 return sqlSession.selectList(namespace + ".selectList", vo);}
public List<Code> selectList(CodeVo vo) 
	{ List<Code> list=sqlSession.selectList(namespace + ".selectList", "");return list;}  
	public int insert(Main dto) { return sqlSession.insert(namespace+ ".insert", dto);}
	// 코드객체 하나
	public Main selectOne(MainVo vo){return sqlSession.selectOne(namespace+".selectOne", vo);}
	public int update(Main dto) { return sqlSession.update(namespace+ ".update", dto);}  */

	}
	

