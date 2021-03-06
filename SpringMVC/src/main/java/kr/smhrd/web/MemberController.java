package kr.smhrd.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.mapper.MemberVO;

@Controller
public class MemberController {
	@Inject
	private MemberMapper mapper;

	// web/login.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/login.do")
	public void login() {
		System.out.println("-로그인");
	}

	// web/join.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/join.do")
	public void join() {
		System.out.println("-join");
	}

	// web/joinInsert.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/joinInsert.do")
	public String joinInsert(MemberVO vo) {
		System.out.println("joinInsert");
		mapper.joinInsert(vo);

		return "redirect:/login.do";
	}

	// web/loginSelect.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/loginSelect.do")
	public String loginSelect(MemberVO vo, HttpSession session) {
		System.out.println("-loginSelect");
		MemberVO info = mapper.loginSelect(vo);

		// System.out.println("loginSelect "+info); // info 세션정보가 출력된다

		if (info != null) {
			session.setAttribute("info", info);
		}

		return "redirect:/boardList.do";
	}

	// web/logout.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		System.out.println("-logout");

		session.removeAttribute("info");

		return "redirect:/boardList.do";
	}

	// web/update.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/update.do")
	public void update() {
		System.out.println("-update");
	}

	// web/updateService.do를 요청했을 때 실행되는 메소드
	@RequestMapping("/updateService.do")
	public String updateService(MemberVO vo, HttpSession session) {
		System.out.println("-updateService");
		mapper.updateService(vo);

		session.setAttribute("info", vo);

		// MemberVO info = mapper.loginSelect(vo);

		// System.out.println("정보수정 " + info); // info 세션정보가 출력된다

		// if (info != null) {
		// session.setAttribute("info", info);
		// }
		return "redirect:/boardList.do";
	}
	
	//web/memberList.do를 요청했을때 실행되는 메소드
	@RequestMapping("/memberList.do")
	public @ResponseBody List<MemberVO> memberList() {
		System.out.println("멤버목록 비동기통신");
		List<MemberVO> list= mapper.memberList(); // 보내야할 정보는 없고, 받아와야할 정보들이 존재한다
		/*
		  for (int i = 0; i < list.size(); i++) {
		  System.out.println(list.get(i).toString());
		 */ // 리스트 확인 차원에서 tostring으로 찍어준다
					
		System.out.println(list.size());
		return list ;
	}
	
	//web/idCheck.do를 요청했을때 실행되는 메소드
		@RequestMapping("/idCheck.do")
		public @ResponseBody MemberVO idCheck(String id) {
			MemberVO vo= mapper.idCheck(id); 
			return vo ;
		}
}
