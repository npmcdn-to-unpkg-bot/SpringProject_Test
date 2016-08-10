package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
import board.bean.RecommandDTO;
import board.bean.employeeDTO;
import board.bean.mainListBeforeDTO;
import board.bean.mainListDTO;
import board.bean.mainListTwoDTO;
import board.dao.BoardDAO;

@Controller
@Component
public class IndexController {
	@Autowired
	private BoardDAO boardDAO;
	
	@RequestMapping(value="/main/index.do",method=RequestMethod.GET)
	public ModelAndView index(HttpSession session,@RequestParam(required=false) String indexStart){
		ModelAndView mav = new ModelAndView();

		
		List<mainListDTO> mainList = boardDAO.getMainInfo();
		List<BoardDTO> boardList = boardDAO.getCboardList();
		int rownum = boardDAO.getRownumber();
		
		String firstGrade = "1성급";
		String twoGrade="2성급";
		String threeGrade="3성급";
		String fourGrade="4성급";
		String fiveGrade="5성급";
		
		 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
		 String today = formatter.format(new java.util.Date());
		
		 session.setAttribute("today",today);
		List<mainListDTO> firstGradeList = boardDAO.getFirstGrade(firstGrade);
		List<mainListDTO> twoGradeList = boardDAO.getTwoGrade(twoGrade);
		List<mainListDTO> threeGradeList = boardDAO.geThreeGrade(threeGrade);
		List<mainListDTO> fourGradeList = boardDAO.getFourGrade(fourGrade);
		List<mainListDTO> fiveGradeList = boardDAO.getFiveGrade(fiveGrade);
		
		int first = boardDAO.getFirst(firstGrade);
		int two = boardDAO.getTwo(twoGrade);
		int three = boardDAO.getThree(threeGrade);
		int four = boardDAO.getFour(fourGrade);
		int five = boardDAO.getFive(fiveGrade);
		
		session.setAttribute("first",first);
		session.setAttribute("two",two);
		session.setAttribute("three",three);
		session.setAttribute("four",four);
		session.setAttribute("five",five);
		
		session.setAttribute("firstGradeList",firstGradeList);
		session.setAttribute("twoGradeList",twoGradeList);
		session.setAttribute("threeGradeList",threeGradeList);
		session.setAttribute("fourGradeList",fourGradeList);
		session.setAttribute("fiveGradeList",fiveGradeList);
		
		mav.addObject("rownum",rownum);
		mav.addObject("mainList",mainList);
		mav.addObject("boardList",boardList);
		mav.addObject("display", "/template/container.jsp");
		mav.setViewName("/main/index");
		return mav;
	}
}	
