package kr.co.dong.controller;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.dong.board.BoardService;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService boardService;
	
	
	
	@RequestMapping(value="projectLogin",method= RequestMethod.POST)
	public String login(@RequestParam Map<String,Object> map,
			HttpServletRequest request,HttpServletResponse response,HttpSession session, RedirectAttributes rttr) throws Exception {
		request.setCharacterEncoding("utf-8");
		Map user = boardService.login(map);
		
		if (user == null) { // 로그인 실패
			rttr.addFlashAttribute("msg", "로그인에 실패하였습니다.");
			return "redirect:projectLogin";
		} else { // 로그인 성공
			rttr.addFlashAttribute("msg", "로그인 성공");
			session.setAttribute("user", user);
			return "redirect:/";
		}
		
		
	}
}
