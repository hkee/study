package cf.studycafe.service;

import java.util.HashMap;

import org.springframework.ui.Model;

import cf.studycafe.domain.MemberVo;

public interface MemberService {

	MemberVo loginProc(MemberVo membervo);

	void joinProc(MemberVo membervo);			// ȸ������

	MemberVo idCheck(MemberVo membervo);		// ���̵� �ߺ� üũ

	MemberVo findIDProc(MemberVo membervo);		// ���̵� ã��

}
