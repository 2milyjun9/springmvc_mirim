package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rest/member")
public class MemberRestController {
	
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public List<Member> memberList(MemberVo vo) throws Exception {
		List<Member> list = service.memberList(vo);
		return list;
	}
	
	@RequestMapping(value="/{seq}", method = RequestMethod.GET)
	public Member memberViewAdmin(@PathVariable String seq, MemberVo vo)throws Exception{
		vo.setIfmmSeq(seq);
		Member item = service.memberViewAdmin(vo);
		return item;
	}
	
	@RequestMapping(value="", method = RequestMethod.POST)
	public String insertRest(@RequestBody Member dto) throws Exception{
		service.insertRest(dto);
		return dto.getIfmmSeq();
	}
	
	@RequestMapping(value="/{seq}", method = RequestMethod.PATCH)
	public void updateRest(@PathVariable String seq, @RequestBody Member dto) throws
	Exception{
		dto.setIfmmSeq(seq);
		service.updateRest(dto);
	}
	
	

}