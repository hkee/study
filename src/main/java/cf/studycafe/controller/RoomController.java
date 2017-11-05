package cf.studycafe.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	    logger.info("Room step Controller");
	    
	    List<RoomReserve> list = roomService.reserveList();
	    
	    logger.info("Room step = {} ", list);
	    model.addAttribute("list", list);
	    
	    return "/room/step";
	  }
	  @RequestMapping(value = "/reserve", method = RequestMethod.GET)
	  public String reserve(Model model) throws Exception {
	    logger.info("Room reserve Controller");
//	    
//	    List<RoomReserve> list = roomService.reserveList();
//	    
//	    logger.info("Room step = {} ", list);
//	    model.addAttribute("list", list);
	    
	    return "/room/reserve";
	  }

}
