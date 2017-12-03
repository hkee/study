package cf.studycafe.service;

import java.util.List;

import cf.studycafe.domain.Room;
import cf.studycafe.domain.RoomReserve;

public interface RoomService {
	public List<Room> list(); 
	public List<RoomReserve> reserveList(int index); 
}
