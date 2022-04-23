package kr.book.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookMapper {

	List<BookVO> bookList();

	void bookInsert(BookVO vo);
	
}
