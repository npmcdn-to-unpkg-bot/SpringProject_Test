package board.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpCookie;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
import board.bean.BoardPaging;
import board.bean.NoticeDTO;
import board.bean.QnaDTO;
import board.bean.mainListDTO;
import board.dao.BoardDAO;
import imageboard.bean.ImageboardDTO;
import imageboard.dao.ImageboardDAO;

@Controller
@Component
public class BoardController {

	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private BoardPaging paging;

	@RequestMapping(value = "/board/boardWriteForm.do", method = RequestMethod.GET)
	public ModelAndView boardWriteForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/board/boardWriteForm.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	@RequestMapping(value = "/board/boardWrite.do", method = RequestMethod.POST)
	public String boardWrite(@ModelAttribute BoardDTO boardDTO, HttpSession session) {
		boardDTO.setHname((String) session.getAttribute("hname"));
		boardDAO.boardWrite(boardDTO);

		return "/board/boardWrite";
	}

	@RequestMapping(value = "/board/boardWrite.do", method = RequestMethod.GET)
	public ModelAndView boardWr() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/template/freeBoard.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// �옄�쑀寃뚯떆�뙋(湲��벐湲� �썑)
	@RequestMapping(value = "/board/freeboardAfter.do", method = RequestMethod.GET)
	public String freeBoardAfter(@RequestParam(required = false) String pg, Model model, HttpSession session) {
		if (pg == null)
			pg = "1";

		//페이징 설정
		int endNum = Integer.parseInt(pg) * 5;
		int startNum = endNum - 4;

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<BoardDTO> list = boardDAO.getBoardList(map);
		List<BoardDTO> replyList = boardDAO.getReplyList();
		System.out.println(replyList.get(0).getContent());
		System.out.println(replyList.get(1).getHname());
		
		//totalA 
		int totalA = boardDAO.getTotalArticle();
		paging.setCurrentPage(Integer.parseInt(pg));
		paging.setPageBlock(3);
		paging.setPageSize(5);
		paging.setTotalA(totalA);// 珥앷��닔
		paging.makePagingHTML();

		session.setAttribute("replyList",replyList);
			
		model.addAttribute("pg", pg);
		model.addAttribute("list", list);
		model.addAttribute("replayList", replyList);
		model.addAttribute("paging", paging);
		model.addAttribute("display", "/template/freeBoard.jsp");
		return "/main/index";

	}

	// 검색기능
	@RequestMapping(value = "/board/boardSearch.do", method = RequestMethod.GET)
	public ModelAndView boardSearch(@RequestParam Map<String, String> map, @RequestParam(required = false) String pg) {

		ModelAndView mav = new ModelAndView();

		if (pg == null)
			pg = "1";

		// 1페이지당 5개씩
		int endNum = Integer.parseInt(pg) * 5;
		int startNum = endNum - 4;

		map.put("startNum", startNum + "");
		map.put("endNum", endNum + "");

		List<BoardDTO> list = boardDAO.boardSearch(map);

		// 페이징 처리
		int totalA = boardDAO.getTotalSearchArticle(map);
		System.out.println("총글수=" + totalA);
		paging.setCurrentPage(Integer.parseInt(pg));
		paging.setPageBlock(3);
		paging.setPageSize(5);
		paging.setTotalA(totalA);// 총글수
		paging.makePagingHTML();

		mav.addObject("pg", Integer.parseInt(pg));
		mav.addObject("list", list);
		mav.addObject("map", map);
		mav.addObject("paging", paging);
		mav.addObject("display", "/template/freeBoard.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// 상세
	@RequestMapping(value = "/template/boardEnter.do", method = RequestMethod.GET)
	public ModelAndView boardEnter(@RequestParam String package_seq) {

		System.out.println("package_seq" + package_seq);
		List<mainListDTO> detailList = boardDAO.getDetailInfo(package_seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("detailList", detailList);
		mav.addObject("display", "/template/detailBoard.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// 오시는 길
	@RequestMapping(value = "/template/direction.do", method = RequestMethod.GET)
	public ModelAndView direction() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/template/direction.jsp");
		mav.setViewName("/main/index");
		return mav;

	}

	// payment.jsp _page=go
	@RequestMapping(value = "/template/payment.do", method = RequestMethod.GET)
	public ModelAndView payment() {
		System.out.println("???????");
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/template/payment.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// package_reservation.jsp _page=go
	@RequestMapping(value = "/template/reservation.do", method = RequestMethod.GET)
	public ModelAndView reservation() {
		System.out.println("???????");
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/template/reservation.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// kakao.jsp _page=go
	@RequestMapping(value = "/template/kakao.do", method = RequestMethod.GET)
	public ModelAndView kakao() {
		System.out.println("???????");
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/template/kakao.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// 검색
	@RequestMapping(value = "/template/search.do", method = RequestMethod.GET)
	public ModelAndView search(@RequestParam String schText, @RequestParam String schSel, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println("검색어 : " + schText);
		System.out.println("검색어 : " + schSel);

		if (schSel.equals("hotel_name"))
			schSel = "hotel.hotel_name";

		Map<String, String> map = new HashMap<String, String>();
		map.put("schText", schText);
		map.put("schSel", schSel);

		List<mainListDTO> mainList = boardDAO.getSearch(map);

		String schChk = "y";

		mav.addObject("schChk", schChk);
		mav.addObject("mainList", mainList);
		mav.addObject("display", "/template/container.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// Q&A 게시판
	@RequestMapping(value = "/qnaboard/qnaboardAfter.do", method = RequestMethod.GET)
	public String qnaBoardAfter(@RequestParam(required = false) String pg, Model model) {
		if (pg == null)
			pg = "1";

		// list open
		int endNum = Integer.parseInt(pg) * 5;
		int startNum = endNum - 4;

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);

		List<QnaDTO> list = boardDAO.getQnaBoardList(map);

		// paging
		int totalA = boardDAO.getQnaTotalArticle();
		paging.setCurrentPage(Integer.parseInt(pg));
		paging.setPageBlock(3);
		paging.setPageSize(5);
		paging.setTotalA(totalA);// total article
		paging.makePagingHTML();

		model.addAttribute("pg", pg);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		model.addAttribute("display", "/template/qnaBoard.jsp");
		return "/main/index";

	}

	// Q&A board writeform
	@RequestMapping(value = "/qnaboard/boardWriteForm.do", method = RequestMethod.GET)
	public ModelAndView qnaWriteForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/qnaboard/boardWriteForm.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// Q&A board write step1
	@RequestMapping(value = "/qnaboard/boardWrite.do", method = RequestMethod.GET)
	public ModelAndView qnaWrite() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/template/qnaBoard.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// Q&A board write step2
	@RequestMapping(value = "/qnaboard/boardWrite.do", method = RequestMethod.POST)
	public String qnaWrite(@ModelAttribute QnaDTO qnaDTO, HttpSession session) {
		qnaDTO.setHname((String) session.getAttribute("hname"));
		boardDAO.qnaboardWrite(qnaDTO);

		return "/qnaboard/boardWrite";
	}

	
	// Notice board paging
		@RequestMapping(value = "/template/notice.do", method = RequestMethod.GET)
		public String noticeBoardAfter(@RequestParam(required = false) String pg, Model model) {
			if (pg == null)
				pg = "1";

			// list open
			int endNum = Integer.parseInt(pg) * 5;
			int startNum = endNum - 4;

			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("startNum", startNum);
			map.put("endNum", endNum);

			List<NoticeDTO> list = boardDAO.getNoticeBoardList(map);

			// paging
			int totalA = boardDAO.getNoticeTotalArticle();
			paging.setCurrentPage(Integer.parseInt(pg));
			paging.setPageBlock(3);
			paging.setPageSize(5);
			paging.setTotalA(totalA);// total article
			paging.makePagingHTML();

			model.addAttribute("pg", pg);
			model.addAttribute("list", list);
			model.addAttribute("paging", paging);
			model.addAttribute("display", "/template/notice.jsp");
			return "/main/index";

		}

	// directionBora.jsp _page=go
	@RequestMapping(value = "/template/directionBora.do", method = RequestMethod.GET)
	public ModelAndView directionBora() {
		System.out.println("???????");
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/template/directionBora.jsp");
		mav.setViewName("/main/index");
		return mav;
	}

	// directionOne.jsp _page=go
	@RequestMapping(value = "/template/directionKor.do", method = RequestMethod.GET)
	public ModelAndView directionKor() {
		System.out.println("???????");
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/template/directionKor.jsp");
		mav.setViewName("/main/index");
		return mav;
	}
	
	 // freeboard hit순 정렬 게시판
	   @RequestMapping(value = "/board/freeboardAfterHit.do", method = RequestMethod.GET)
	   public String freeBoardAfterHit(@RequestParam(required = false) String pg, Model model) {
	      if(pg == null)
	         pg = "1";

	      //
	      int endNum = Integer.parseInt(pg) * 5;
	      int startNum = endNum - 4;

	      Map<String, Integer> map = new HashMap<String, Integer>();
	      map.put("startNum", startNum);
	      map.put("endNum", endNum);

	      List<BoardDTO> list = boardDAO.getHitBoardList(map);

	      // paging
	      int totalA = boardDAO.getTotalArticle();
	      paging.setCurrentPage(Integer.parseInt(pg));
	      paging.setPageBlock(3);
	      paging.setPageSize(5);
	      paging.setTotalA(totalA);
	      paging.makePagingHTML();

	      model.addAttribute("pg", pg);
	      model.addAttribute("list", list);
	      model.addAttribute("paging", paging);
	      model.addAttribute("display", "/template/freeBoard.jsp");
	      return "/main/index";

	   }
	
	@ResponseBody
	@RequestMapping(value="/template/checkfreeboard.do", method = RequestMethod.GET)
	 public String checkfreeboard(@RequestParam(value="hname") String hname,
			 @RequestParam(value="content") String content,
			 @RequestParam(value="seq") String seq,
			 Model model
			 ){
	    
	      Map<String, String> map = new HashMap<String, String>();
	      map.put("hname", hname);
	      map.put("content", content);
	      map.put("seq",seq);
	    
	    
	    boardDAO.freeReply(map);
	    int fseq =  Integer.parseInt(seq);
	    BoardDTO boardDTO = boardDAO.getFreeBoard(fseq);
	    
	    JSONObject jsonObj = new JSONObject(boardDTO);
	    jsonObj.put("hname",boardDTO.getHname());
	    jsonObj.put("content",boardDTO.getContent());
	    jsonObj.put("seq",boardDTO.getSeq());
	    
	    String json = jsonObj.toString();
        model.addAttribute("data", json);
        return  json;
	   }
	
	
	// snapPage.jsp
	   @RequestMapping(value = "/template/snapPage.do", method = RequestMethod.GET)
	   public ModelAndView snapPage() {
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("display", "/template/snapPage.jsp");
	      mav.setViewName("/main/index");
	      return mav;
	   }
	   
	
}
