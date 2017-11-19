package cf.studycafe.service.impl;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import cf.studycafe.domain.MemberVo;
import cf.studycafe.persistence.MemberDAO;
import cf.studycafe.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO memberDAO;

	@Override	
	public MemberVo loginProc(MemberVo membervo) {
		// TODO Auto-generated method stub
		return memberDAO.loginProc(membervo);
		
	}
	
}
