package cf.studycafe.domain;

import java.util.Date;

public class BoardVO {

	private Integer board_seq;
	private String id;
	private Integer ref;
	private char gubun;
	private Integer depth;
	private Integer re_ord;
	private String title;
	private String contents;
	private String password;
	private Date regdate;
	private Date update;
	private String sfile;
	private String rfile;
	private Integer count;
	private char use_yn;
	private char open_yn;
	
	public Integer getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(Integer board_seq) {
		this.board_seq = board_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Integer getRef() {
		return ref;
	}
	public void setRef(Integer ref) {
		this.ref = ref;
	}
	public char getGubun() {
		return gubun;
	}
	public void setGubun(char gubun) {
		this.gubun = gubun;
	}
	public Integer getDepth() {
		return depth;
	}
	public void setDepth(Integer depth) {
		this.depth = depth;
	}
	public Integer getRe_ord() {
		return re_ord;
	}
	public void setRe_ord(Integer re_ord) {
		this.re_ord = re_ord;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdate() {
		return update;
	}
	public void setUpdate(Date update) {
		this.update = update;
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
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public char getUse_yn() {
		return use_yn;
	}
	public void setUse_yn(char use_yn) {
		this.use_yn = use_yn;
	}
	public char getOpen_yn() {
		return open_yn;
	}
	public void setOpen_yn(char open_yn) {
		this.open_yn = open_yn;
	}
	
	
	
}
