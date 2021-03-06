package kr.book.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BookVO {
	private int num; //  번호
	@NonNull
	private String title; //  제목
	@NonNull
	private String author; //  작가
	@NonNull
	private String company; //  출판사
	@NonNull
	private String isbn; //  ISBN
	private int count; //  보유도서
	
}
