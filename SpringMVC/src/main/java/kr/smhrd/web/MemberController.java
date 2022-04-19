package kr.smhrd.web;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.mapper.MemberVO;

@Controller
public class MemberController {
	@Inject
	private MemberMapper mapper;

	// web/login.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/login.do")
	public void login() {
		System.out.println("로그인");
	}

	// web/join.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/join.do")
	public void join() {
		System.out.println("join");
	}

	// web/joininsert.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/joinInsert.do")
	public String joinInsert(MemberVO vo) {
		System.out.println("joinInsert");
		mapper.joinInsert(vo);

		return "redirect:/login.do";
	}

}
