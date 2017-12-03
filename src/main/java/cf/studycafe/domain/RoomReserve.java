package cf.studycafe.domain;

import java.util.Date;

public class RoomReserve {
	private int resve_seq;
	private String id;
	private int room_seq;
	private String member_yn;
	private Date regdate;
	private Date endDate;
	private Date resveDate;
	private String nmpr;
	private String drk_yn;
	private int stprc;
	private String resve_state;

	public int getResve_seq() {
		return resve_seq;
	}

	public void setResve_seq(int resve_seq) {
		this.resve_seq = resve_seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getRoom_seq() {
		return room_seq;
	}

	public void setRoom_seq(int room_seq) {
		this.room_seq = room_seq;
	}

	public String getMember_yn() {
		return member_yn;
	}

	public void setMember_yn(String member_yn) {
		this.member_yn = member_yn;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getResveDate() {
		return resveDate;
	}

	public void setResveDate(Date resveDate) {
		this.resveDate = resveDate;
	}

	public String getNmpr() {
		return nmpr;
	}

	public void setNmpr(String nmpr) {
		this.nmpr = nmpr;
	}

	public String getDrk_yn() {
		return drk_yn;
	}

	public void setDrk_yn(String drk_yn) {
		this.drk_yn = drk_yn;
	}

	public int getStprc() {
		return stprc;
	}

	public void setStprc(int stprc) {
		this.stprc = stprc;
	}

	public String getResve_state() {
		return resve_state;
	}

	public void setResve_state(String resve_state) {
		this.resve_state = resve_state;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}


}
