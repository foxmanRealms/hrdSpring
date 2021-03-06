package kr.smhrd.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MemberVO {
	@NonNull
	private String id; //  아이디
	@NonNull
	private String pw; //  비밀번호
	@NonNull
	private String nick; //  닉네임
	@NonNull
	private String phone; //  번화번호
	
}
