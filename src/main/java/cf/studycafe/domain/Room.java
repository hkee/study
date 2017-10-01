package cf.studycafe.domain;

public class Room {
	private int room_seq;
	private String name;
	private String nmpr_min;
	private String nmpr_max;
	private int price;
	private String memo;
	private String sfile;
	private String rfile;
	private String use_yn;

	public int getRoom_seq() {
		return room_seq;
	}

	public void setRoom_seq(int room_seq) {
		this.room_seq = room_seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNmpr_min() {
		return nmpr_min;
	}

	public void setNmpr_min(String nmpr_min) {
		this.nmpr_min = nmpr_min;
	}

	public String getNmpr_max() {
		return nmpr_max;
	}

	public void setNmpr_max(String nmpr_max) {
		this.nmpr_max = nmpr_max;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getSfile() {
		return sfile;
	}

	public void setSfile(String sfile) {
		this.sfile = sfile;
	}

	public String getRfile() {
		return rfile;
	}

	public void setRfile(String rfile) {
		this.rfile = rfile;
	}

	public String getUse_yn() {
		return use_yn;
	}

	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}

}
