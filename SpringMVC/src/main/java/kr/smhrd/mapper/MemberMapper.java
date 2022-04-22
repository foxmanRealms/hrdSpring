package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.ui.Model;

@Mapper
public interface MemberMapper {

	void joinInsert(MemberVO vo);

	MemberVO loginSelect(MemberVO vo);

	MemberVO logout(MemberVO vo);

	void updateService(MemberVO vo);

	List<MemberVO> memberList();

	MemberVO idCheck(String id);
	
	//public List<BoardVO> boardList();

	//public void boardInsert(BoardVO vo);

	//public BoardVO boardContents(int idx);




}
