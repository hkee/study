package cf.studycafe.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cf.studycafe.domain.Room;
import cf.studycafe.domain.RoomReserve;
import cf.studycafe.persistence.RoomDao;
import cf.studycafe.service.RoomService;

@Service
public class RoomServiceImpl implements RoomService {
	
	@Inject
	RoomDao roomDao;
	
	@Override
	public List<Room> list() {
		return roomDao.list();
	}
	
	@Override
	public List<RoomReserve> reserveList(int index) {
		return roomDao.reserveList(index);
	}
}
