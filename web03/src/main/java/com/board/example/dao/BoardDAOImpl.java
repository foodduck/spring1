package com.board.example.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.example.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	//객체 주입(Dependency Injection) -> 스스로 필요한 명령을 불러 처리할 수 있게 됨 -> 제어의 역전(IoC)
	@Inject
	SqlSession sqlSession;

	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	@Override
	public BoardDTO boardRead(int bno) throws Exception {
		return sqlSession.selectOne("board.boardRead", bno);
	}

	@Override
	public void boardWrite(BoardDTO bdto) throws Exception {
		sqlSession.insert("board.boardWrite", bdto);
	}

	@Override
	public void boardUpdate(BoardDTO bdto) throws Exception {
		sqlSession.update("board.boardUpdate", bdto);
	}

	@Override
	public void boardDelete(int bno) throws Exception {
		sqlSession.delete("board.boardDelete", bno);
	}

	


}
