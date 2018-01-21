package cf.studycafe.service;

import java.util.HashMap;

import org.springframework.ui.Model;

import cf.studycafe.domain.MemberVo;

public interface MemberService {

	MemberVo loginProc(MemberVo membervo);

	void joinProc(MemberVo membervo);			// 회원가입

	MemberVo idCheck(MemberVo membervo);		// 아이디 중복 체크

	MemberVo findIDProc(MemberVo membervo);		// 아이디 찾기

}
