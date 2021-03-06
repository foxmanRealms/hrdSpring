package kr.smhrd.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.mapper.BoardVO;
import kr.smhrd.mapper.MemberVO;

@Controller
public class BoardController {

	@Inject
	private BoardMapper mapper;

	// web/boardList.do라고 요청했을 때 실행되는 메소드
	@RequestMapping("/boardList.do")
	public void boardList(Model model,HttpSession session, MemberVO vo2) {
		System.out.println("게시판 전체보기 실행");

		List<BoardVO> list = mapper.boardList();
		model.addAttribute("list", list);
		
		vo2 = (MemberVO)session.getAttribute("vo1");
				
		System.out.println(vo2);
		// 번호, 제목, 내용, 조회수, 작성자, 작성일
//		BoardVO vo1 =new BoardVO(3,"오늘은 수요일 인데용","하하 너무 좋다",3,"박병관","2022-04-13");
//		BoardVO vo2 =new BoardVO(4,"오늘은 목요일 인데용","하하 너무 좋다",3,"박병관","2022-04-14");
//		BoardVO vo3 =new BoardVO(5,"오늘은 금요일 인데용","하하 너무 좋다",3,"박병관","2022-04-15");
//		BoardVO vo4 =new BoardVO(6,"오늘은 토요일 인데용","하하 너무 좋다",3,"박병관","2022-04-16");
//		BoardVO vo5 =new BoardVO(7,"오늘은 일요일 인데용","하하 너무 좋다",3,"박병관","2022-04-17");
//		
//		List<BoardVO> list = new ArrayList<BoardVO>();
//		list.add(vo1);
//		list.add(vo2);
//		list.add(vo3);
//		list.add(vo4);
//		list.add(vo5);

// 		model.addAttribute("list", list);
//		return "boardList";

	}

	// web/boardInsertForm.do 라고 요청했을 때 실행되는 메소드

	@RequestMapping("/boardInsertForm.do")
	public void boardInsertForm() {
		System.out.println("글쓰기 페이지 이동");
	}

	// web/boardInsert.do 라고 요청했을 때 실행되는 메소드
	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		System.out.println("글쓰기 기능 실행");
		System.out.println(vo.toString());

		mapper.boardInsert(vo);

		return "redirect:/boardList.do";
	}

	// web/boardContents.do라고 요청했을 때 실행되는 메소드
	@RequestMapping("/boardContents.do")
	public void boardContents(int idx, Model model) {
		System.out.println("글보기 기능 실행");
		mapper.count(idx);
		BoardVO vo = mapper.boardContents(idx);
		model.addAttribute("vo", vo);
		System.out.println("변경");

	}

	// web/boardUpdate.do라고 요청했을 때 실행되는 메소드
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		System.out.println("글 수정 기능 실행");
		mapper.boardUpdate(vo);

		return "redirect:/boardList.do";
	}

	// web/boardDelete.do라고 요청했을 때 실행되는 메소드
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int idx) {
		System.out.println("글 삭제 기능 실행");
		mapper.boardDelete(idx);

		return "redirect:/boardList.do";
	}

}
