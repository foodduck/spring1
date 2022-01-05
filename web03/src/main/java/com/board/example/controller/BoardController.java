package com.board.example.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.example.dto.BoardDTO;
import com.board.example.service.BoardService;


@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Inject
	BoardService boardService;
	
	
	//Model인 DTO를 DI하여 View로 전달
	@RequestMapping("list.do")
	public String boardList(Model model) throws Exception {
		List<BoardDTO> list = boardService.boardList();
		model.addAttribute("list", list);
		return "board/board_list";
	}
	//글쓰기 페이지로 이동
	@RequestMapping("writer_page")
	public String writerpage() {
		return "board/writer_page";
	}
	//글쓰기
	@RequestMapping(value="insert.do", method=RequestMethod.POST)
	public String boardWrite(BoardDTO bdto) throws Exception {
		boardService.boardWrite(bdto);
		return "redirect:list.do";
	}
	//글 상세보기
	@RequestMapping(value="read.do", method=RequestMethod.GET)
	public String boardRead(@RequestParam int bno, Model model) throws Exception {
		BoardDTO data = boardService.boardRead(bno);
		model.addAttribute("data", data);
		return "board/board_read";
	}
	//글 수정페이지로 이동
	@RequestMapping(value="updatepage", method=RequestMethod.GET)
	public String boardUpdate(@RequestParam int bno, Model model) throws Exception {
		BoardDTO data = boardService.boardRead(bno);
		model.addAttribute("data", data);
		return "board/board_update";
	}
	//글 수정처리
	@RequestMapping(value="update.do", method=RequestMethod.POST)
	public String boardUpdateDo(BoardDTO bdto) throws Exception {
		boardService.boardUpdate(bdto);
		return "redirect:list.do";
	}
	//글 삭제처리
	@RequestMapping(value="delete.do", method=RequestMethod.GET)
	public String boardDelete(@RequestParam int bno, Model model) throws Exception {
		boardService.boardDelete(bno);
		return "redirect:list.do";
	}
	
}