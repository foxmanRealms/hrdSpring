package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	public List<BoardVO> boardList();

	public void boardInsert(BoardVO vo);

	public BoardVO boardContents(int idx);

	public void boardUpdate(BoardVO vo);

	public void boardDelete(int idx);

	public void count(int idx);

}
