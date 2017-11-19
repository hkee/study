package cf.studycafe.service;

import java.util.HashMap;

import org.springframework.ui.Model;

import cf.studycafe.domain.MemberVo;

public interface MemberService {

	int loginProc(MemberVo membervo);

}
