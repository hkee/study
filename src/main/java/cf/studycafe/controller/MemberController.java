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

	private static final String Login ="login";
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
    //private static final HttpSession session  
	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "login", method = RequestMethod.GET) //로그인 화면
	public String login(){
		logger.info("로그인 화면.");
		return "member/login";
	}
	
	@RequestMapping(value = "loginProc", method = {RequestMethod.POST}) //로그인
	public ResponseEntity<String> loginProc(@RequestBody MemberVo membervo, Model model, HttpServletRequest request) throws Exception{
		
		ResponseEntity<String> entity=null;
		
		try{
			
			
			MemberVo member = memberService.loginProc(membervo);
			HttpSession session  = request.getSession();
					
			if(member != null){
				logger.info("loginProc member + " + member.getId()); 
				model.addAttribute("membervo",member);
				session.setAttribute(Login, member);
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
	
	@RequestMapping(value = "mypage", method = RequestMethod.GET) //마이 페이지
	public String mypage(MemberVo membervo, Model model, HttpServletRequest request){
		
		HttpSession session  = request.getSession();
		logger.info(session.getAttribute(Login).toString());
		model.addAttribute("membervo",session.getAttribute(Login));
		return "member/mypage";
	}
	
	@RequestMapping(value = "join", method = RequestMethod.GET) //회원가입 페이지
	public String join(MemberVo membervo, Model model, HttpServletRequest request){
		
		return "member/join";
	}
	
	@RequestMapping(value = "idCheck", method = {RequestMethod.POST}) //아이디 중복 확인
	public ResponseEntity<String> idCheck(@RequestBody MemberVo membervo, Model model, HttpServletRequest request) throws Exception{
		
		ResponseEntity<String> entity=null;
		
		try{
			
			MemberVo member = memberService.idCheck(membervo);
			
			if(member != null){
				logger.info("joinProc member + " + member.getId()); 							
				entity = new ResponseEntity<String>("usingid", HttpStatus.OK);
			} 
			else {
				entity = new ResponseEntity<String>("success", HttpStatus.OK);
				
			}
		}catch(Exception e){			
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}		
		return entity;
	}
	
	@RequestMapping(value = "joinProc", method = {RequestMethod.POST}) //아이디 중복 확인
	public ResponseEntity<String> joinProc(@RequestBody MemberVo membervo, Model model, HttpServletRequest request) throws Exception{
		
		ResponseEntity<String> entity=null;
		
		try{
			
			memberService.joinProc(membervo);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);				
			
		}catch(Exception e){			
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}		
		return entity;
	}

	@RequestMapping(value = "findID", method = RequestMethod.GET) //아이디 찾기 화면
	public String findID(){
		logger.info("아이디 찾기");
		return "member/findID";
	}
	
	@RequestMapping(value = "findIDProc", method = {RequestMethod.POST}) //아이디 찾기 확인
	public ResponseEntity<String> findIDProc(@RequestBody MemberVo membervo, Model model, HttpServletRequest request) throws Exception{
		
		ResponseEntity<String> entity=null;
		
		try{
			
			MemberVo member = memberService.findIDProc(membervo);
			
			if(member != null){
				logger.info("findIDProc member + " + member.getName()); 
				model.addAttribute("membervo",member);
				entity = new ResponseEntity<String>("success", HttpStatus.OK);
			} 
			else {
				
				entity = new ResponseEntity<String>("noUsingId", HttpStatus.OK);
				
			}
		}catch(Exception e){			
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}		
		return entity;
	}
}
