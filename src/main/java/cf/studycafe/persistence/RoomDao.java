package cf.studycafe.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import cf.studycafe.domain.Room;
import cf.studycafe.domain.RoomReserve;

@Repository
public class RoomDao {

	@Inject
	private SqlSession session;

	private static String namespace = "cf.studycafe.mapper.RoomMapper";

	public List<Room> list() {
		return session.selectList(namespace + ".list");
	}
	public List<RoomReserve> reserveList(int index) {
		return session.selectList(namespace + ".reserveList", index);
	}
}
