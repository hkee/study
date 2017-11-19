package cf.studycafe.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cf.studycafe.domain.MemberVo;
import cf.studycafe.service.MemberService;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(){
		logger.info("로그인 화면.");
		return "member/login";
	}
	
	@RequestMapping(value = "loginProc", method = {RequestMethod.POST})
	public ResponseEntity<String> loginProc(@RequestBody MemberVo membervo, Model model) throws Exception{
		
		ResponseEntity<String> entity=null;
		int success = 0;		
		
		try{
			logger.info("loginProc1"); 
			
			success = memberService.loginProc(membervo);
					
			if(success > 0){
				entity = new ResponseEntity<String>("success", HttpStatus.OK);
			} 
			else {
				entity = new ResponseEntity<String>("nodata", HttpStatus.OK);
			}
		}catch(Exception e){			
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}	
	
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public String mypage(MemberVo membervo, Model model, HttpSession session){
		logger.info("마이페이지");
		model.addAttribute("membervo",membervo);
		return "member/mypage";
	}
	
}
