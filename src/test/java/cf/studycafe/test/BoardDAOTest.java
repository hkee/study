package cf.studycafe.test;

//import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import cf.studycafe.domain.BoardVO;
import cf.studycafe.persistence.BoardDAO;
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })

public class BoardDAOTest {

	  @Inject
	  private BoardDAO dao;

	  private static Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	  
	  @Test
	  public void testCreate()throws Exception{
		  BoardVO board =new BoardVO();
		  board.setId("user00");
		  board.setTitle("가나다라마바사아자차카타파한");
		  board.setContents("test test test");
		  
		  System.out.println(board.getTitle());
		  dao.create(board);
		  
		  
	  }
}
