package cf.studycafe.service;
import java.util.List;
import cf.studycafe.domain.BoardVO;;

public interface BoardService {

	public void regist(BoardVO board)throws Exception;
	public List<BoardVO> noticeListAll() throws Exception;
	public BoardVO read(Integer bno)throws Exception;
	public void remove(Integer bno)throws Exception;
	public void updateViewCnt(Integer bno)throws Exception;
	public void modify(BoardVO board)throws Exception;
}
