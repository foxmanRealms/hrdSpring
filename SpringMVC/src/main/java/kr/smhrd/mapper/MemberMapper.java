package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.ui.Model;

@Mapper
public interface MemberMapper {

	void joinInsert(MemberVO vo);
	
	//public List<BoardVO> boardList();

	//public void boardInsert(BoardVO vo);

	//public BoardVO boardContents(int idx);




}