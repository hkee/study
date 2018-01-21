package cf.studycafe.persistence;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import cf.studycafe.domain.MemberVo;

@Repository
public class MemberDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "cf.studycafe.mapper.MemberMapper";
	
	
	public MemberVo loginProc(MemberVo membervo) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".loginProc",membervo);
	}


	public void joinProc(MemberVo membervo) {
		// TODO Auto-generated method stub
		 session.insert(namespace+".joinProc",membervo);
	}

	//아이디 중복 체크
	public MemberVo idCheck(MemberVo membervo) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".idCheck",membervo);
	}

	//아이디 찾기
	public MemberVo findIDProc(MemberVo membervo) {
		// TODO Auto-generated method stub
		return  session.selectOne(namespace+".findIDProc",membervo);
	}

}
