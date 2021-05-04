package egovframework.board.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egovframework.board.service.BoardService;

@Controller
public class BoardController {

	@Resource
	private BoardService boardService;
	
}
