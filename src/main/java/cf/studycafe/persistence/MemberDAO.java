package cf.studycafe.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import cf.studycafe.domain.MemberVo;

@Repository
public class MemberDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "cf.studycafe.mapper.MemberMapper";
	
	
	public int loginProc(MemberVo membervo) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".loginProc",membervo);
	}

}
