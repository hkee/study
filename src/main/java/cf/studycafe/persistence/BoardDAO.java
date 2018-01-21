package cf.studycafe.persistence;

import java.util.List;

//import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import cf.studycafe.domain.BoardVO;;

@Repository
public class BoardDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="cf.studycafe.mapper.BoardMapper";
	
	
	public void create(BoardVO vo)throws Exception{
		session.insert(namespace+".create",vo);
	}
	public List<BoardVO> noticeListAll()throws Exception{
		return session.selectList(namespace+".noticeListAll");
	}
	public BoardVO read(Integer bno)throws Exception{
		return session.selectOne(namespace+".read",bno);
	}
	public void delete(Integer bno)throws Exception{
		session.delete(namespace+".delete",bno);
	}
	
}
