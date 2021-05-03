package egovframework.board.service;

public class BoardVO {
	
	/** 게시물 아이디 **/
	private String boardidx;
	/** 게시물 제목 **/
	private String title;
	/** 게시물 내용**/
	private String contents;
	/** 작성자 ID **/
	private String writerId;
	/** 작성자 이름 **/
	private String writerNm;
	/** 작성 날짜 **/
	private String date;
	
	
	public String getBoardidx() {
		return boardidx;
	}
	public void setBoardidx(String boardidx) {
		this.boardidx = boardidx;
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
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getWriterNm() {
		return writerNm;
	}
	public void setWriterNm(String writerNm) {
		this.writerNm = writerNm;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	
	
	

}
