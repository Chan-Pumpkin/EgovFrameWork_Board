package egovframework.board.service;

import java.util.List;

import egovframework.board.service.BoardVO;

public interface BoardService {
	
	/** 게시물 목록*/
	List<?> selectBoardList(BoardVO boardvo) throws Exception; 

}
