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

}
