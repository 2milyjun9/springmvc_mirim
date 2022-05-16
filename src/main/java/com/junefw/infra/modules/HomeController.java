package com.junefw.infra.modules;



import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.junefw.infra.modules.member.Member;
import com.junefw.infra.modules.member.MemberVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/sampleKakaoMap")
	public String sampleKakaoMap() {
		return "test/map";
	}
	
	
	@RequestMapping(value = "/test/memberList") 
	public String memberList(Model model) throws Exception {
		
		   //api 호출해서 데이터를 받아 온다.
		   
		   String apiUrl = "http://localhost:8080/infra/rest/member";
		   
		   URL url = new URL(apiUrl);
		   HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		   httpURLConnection.setRequestMethod("GET");
		   
		   BufferedReader bufferedReader;
		   if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			   bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		   } else {
			   bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		   }
		   
		   StringBuilder stringBuilder = new StringBuilder();
		   String line;
		   while  ((line = bufferedReader.readLine()) != null) {
			   System.out.println("line: " + line);
			   stringBuilder.append(line);
		   }
		   
		   bufferedReader.close();
		   httpURLConnection.disconnect();
		   
			ObjectMapper objectMapper = new ObjectMapper();
			List<Member> memberList = objectMapper.readValue(stringBuilder.toString(),new TypeReference<List<Member>>() {});
			
			model.addAttribute("list", memberList);
		   
		   
		return "test/memberList";
	}

	
	@RequestMapping(value = "/test/memberView") 	//브라우저창에 입력하는 주소
	   public String memberView(Model model) throws Exception {
		   
		   //api 호출해서 데이터를 받아 온다.
		   
		   String apiUrl = "http://localhost:8080/infra/rest/member/1";
		   
		   URL url = new URL(apiUrl);
		   HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		   httpURLConnection.setRequestMethod("GET");
		   
		   BufferedReader bufferedReader;
		   if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			   bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		   } else {
			   bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		   }
		   
		   StringBuilder stringBuilder = new StringBuilder();
		   String line;
		   while  ((line = bufferedReader.readLine()) != null) {
			   System.out.println("line: " + line);
			   stringBuilder.append(line);
		   }
		   
		   bufferedReader.close();
		   httpURLConnection.disconnect();
		   
		   System.out.println("final line:" + stringBuilder.append(line));
		   
		   ObjectMapper objectMapper = new ObjectMapper();
		   Member member = objectMapper.readValue(stringBuilder.toString(), Member.class);
		   
		   model.addAttribute("item", member);
		   
		   
		   // json Object
		   // json String
		   
		   // json object -> 객체로 변환
		   // json string -> 객체로 변환
		   
		   return "/test/memberView";
	   }     
	
}
