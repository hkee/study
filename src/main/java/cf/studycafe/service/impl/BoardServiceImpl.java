package cf.studycafe.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import cf.studycafe.domain.BoardVO;
import cf.studycafe.persistence.BoardDAO;
import cf.studycafe.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	private BoardDAO dao;
	
	@Override
	public void regist(BoardVO board) throws Exception{
		dao.create(board);
	}
	@Override
	public List<BoardVO> noticeListAll() throws Exception{
		return dao.noticeListAll();
	}
	@Override
	public BoardVO read(Integer bno)throws Exception{
		return dao.read(bno);
	}
	@Override
	public void remove(Integer bno)throws Exception{
		dao.delete(bno);
	}
	@Override
	public void updateViewCnt(Integer bno)throws Exception{
		dao.viewCnt(bno);
	}
	@Override
	public void modify(BoardVO board)throws Exception{
		dao.modify(board);
	}
	
}
