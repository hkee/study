package cf.studycafe.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cf.studycafe.domain.BoardVO;
import cf.studycafe.service.BoardService;
@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private BoardService service;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String center1(){
		return "redirect:/board/noticeListAll";
	}
	@RequestMapping(value = "/noticeListAll", method = RequestMethod.GET)
	public void notice(Model model) throws Exception{
		logger.info("show notice all List........");
		model.addAttribute("list", service.noticeListAll());
	}
	@RequestMapping(value = "/free", method = RequestMethod.GET)
	public String free(Model model) throws Exception{
		logger.info("show free all list...........");
		return "/board/freeListAll";
		
	}
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String qna(Model model) throws Exception{
		logger.info("show QnA all list...........");
		return "/board/qnaListAll";
	}
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public void registerGET(BoardVO board,Model model)throws Exception{
		logger.info("register get.....");
	}
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registPOST(BoardVO board, Model model)throws Exception{
		logger.info("regist Post......");
		logger.info(board.toString());

		service.regist(board);
		if(board.getGubun()=='q'){
			return "redirect:/board/qna";
		}
		else if(board.getGubun()=='n'){
			return "redirect:/board/notice";
		}else if(board.getGubun()=='f'){
			return "redirect:/board/free";
		}
		return "/board/success";
	}
	// �������Ͼ��ε�
    @RequestMapping(value = "/file_uploader_html5.do",
                  method = RequestMethod.POST)
    @ResponseBody
    public String multiplePhotoUpload(HttpServletRequest request) {
        // ��������
        StringBuffer sb = new StringBuffer();
        try {
            // ���ϸ��� �޴´� - �Ϲ� �������ϸ�
            String oldName = request.getHeader("file-name");
            // ���� �⺻��� _ �󼼰��
            String filePath = "C:\\Users\\hyunkyung\\Documents\\study\\src\\main\\webapp\\resources\\photoUpload\\";
            String saveName = sb.append(new SimpleDateFormat("yyyyMMddHHmmss")
                          .format(System.currentTimeMillis()))
                          .append(UUID.randomUUID().toString())
                          .append(oldName.substring(oldName.lastIndexOf("."))).toString();
            InputStream is = request.getInputStream();
            OutputStream os = new FileOutputStream(filePath + saveName);
            int numRead;
            byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
            while ((numRead = is.read(b, 0, b.length)) != -1) {
                os.write(b, 0, numRead);
            }
            os.flush();
            os.close();
            // ���� ���
            sb = new StringBuffer();
            sb.append("&bNewLine=true")
              .append("&sFileName=").append(oldName)
              .append("&sFileURL=").append("http://localhost:8080/photoUpload/")
        .append(saveName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb.toString();
    }
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(Model model) throws Exception{
		logger.info("read page...........");
		return "/board/read";
		
	}


	
}
