package cf.studycafe.controller;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cf.studycafe.domain.Room;
import cf.studycafe.domain.RoomReserve;
import cf.studycafe.service.RoomService;

@Controller
@RequestMapping("/room")
public class RoomController {
	
	private static final Logger logger = LoggerFactory.getLogger(RoomController.class);

	  @Inject
	  private RoomService roomService;
	  
	  @RequestMapping(method = RequestMethod.GET)
	  public String list(Model model) throws Exception {
	    logger.info("Room list Controller");
	    
	    List<Room> list = roomService.list();
	    
	    logger.info("Room list = {} ", list);
	    model.addAttribute("list", list);
	    
	    return "/room/index";
	  }
	  
	  @RequestMapping(value = "/step", method = RequestMethod.GET)
	  public String step(Model model) throws Exception {
		  return step(model, 1);
	  }
	  @RequestMapping(value = "/step/{index}", method = RequestMethod.GET)
	  public String step(Model model, @PathVariable("index") int index) throws Exception {
	    logger.info("Room step Controller");
	    try {
	    	if (index == 0) { 
		    	index = 1;
		    }
		} catch (Exception e) {
			logger.debug("###ERROR### {}", e.getStackTrace());
		}
	    
	    List<RoomReserve> list = roomService.reserveList(index);
	    logger.info("Room step = {} ", list);
    	for (RoomReserve resve : list) {
    		logger.info("Room reserveTIme = {} ", resve.getResveTime());
    		logger.info("Room reserveDate = {} ", resve.getResveDate());
	    }
	    
	    model.addAttribute("list", list);
	    
	    return "/room/step";
	  }
	  @RequestMapping(value = "/reserve", method = RequestMethod.GET)
	  public String reserve(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
	    logger.info("Room reserve Controller");
	    
	    String seq = request.getParameter("room_seq");
	    String min = request.getParameter("min");
	    String max = request.getParameter("max");
	    
	    if (StringUtils.isNotBlank(seq) && StringUtils.isNotBlank(min) && StringUtils.isNotBlank(max)) {
		    model.addAttribute("seq", seq);
		    model.addAttribute("min", min);
		    model.addAttribute("max", max);
		    
		    return "/room/reserve";
	    } else {
	    	response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('방을 먼저 선택해주세요'); location.href='/room';</script>");
            out.flush();
            return "/room/index";
	    }
	    
	  }
	  @RequestMapping(value = "/reserveAction", method = RequestMethod.POST)
	  public String reserveDo(Model model, HttpServletRequest request) throws Exception {
	    logger.info("Room reserveDo Controller");
	    String id = request.getParameter("user_name");
	    String roomSeq = request.getParameter("room_number");
	    String date = request.getParameter("date");
	    String reserveTime = request.getParameter("reserve_time");
	    String person = request.getParameter("person");
	    String price = request.getParameter("price");
	    price = price.replaceAll(",", "").replaceAll("원", "");
	    
	    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
	    Timestamp reserveTimeTs = new Timestamp(sdf.parse(reserveTime).getTime());
	    
	    SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
	    Timestamp dateTs = new Timestamp(sdf2.parse(date).getTime());
	    
	    RoomReserve roomReserve = new RoomReserve();
	    roomReserve.setId(id);
	    roomReserve.setRoom_seq(Integer.parseInt(roomSeq));
	    roomReserve.setRegdate(dateTs);
	    roomReserve.setResveDate(dateTs);
	    roomReserve.setStprc(Integer.parseInt(price));
	    roomReserve.setResveTime(reserveTimeTs);
	    roomReserve.setNmpr(person);
	    
		int result = roomService.insert(roomReserve);
	    return "/room/reserve";
	  }

}

