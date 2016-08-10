package member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import email.bean.Email;
import email.bean.EmailSender;
import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;
import member.dao.MemberDAO;
import reservate.bean.ReservateDTO;
import reservate.dao.ReservationDAO;

@Controller
@Component
public class MemberController {
	@Autowired
	private MemberDAO memberDAO;
	
   @Autowired
   private EmailSender emailSender;
   
   @Autowired
   private Email email;
	
   @Autowired
   private ReservationDAO reservationDAO;
	@RequestMapping(value="/member/writeForm.do",method=RequestMethod.GET)
	public ModelAndView writeForm(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/writeForm.jsp");
		mav.setViewName("/main/index");
		return mav;
	}
	
	@RequestMapping(value="/member/checkId.do",method=RequestMethod.GET)
	public String checkId(@RequestParam(required=false) String id, Model model){
		MemberDTO memberDTO=null;
		
		if(id!=null) memberDTO = memberDAO.isExistId(id);
	
		model.addAttribute("id", id);
		if(memberDTO==null && id!=null)
			return "/checkIdOk";//사용 가능
		else
			return "/checkIdFail";//사용 불가능
	}
	
	@RequestMapping(value="/member/checkPost.do",method=RequestMethod.GET)
	public String checkPost(){
		return "/member/checkPost";
	}
	
	@RequestMapping(value="/member/checkPost.do",method=RequestMethod.POST)
	public String checkPost(@RequestParam Map<String,String> map,Model model){
		System.out.println("sigungu="+map.get("sigungu"));
		
		List<ZipcodeDTO> list=null;
		if(!map.get("sigungu").equals("") && !map.get("roadname").equals("")){
			list = memberDAO.getZipcodeList(map);
		}
		
		model.addAttribute("list",list);
		return "/member/checkPost";
	}
	
	@RequestMapping(value="/template/write.do", method=RequestMethod.POST)
	public ModelAndView write(@ModelAttribute MemberDTO memberDTO,
							  @RequestParam Map<String, Object> paramMap, 
							  ModelMap model,
							  HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		memberDAO.write(memberDTO);
		String id = memberDTO.getHname();
        String e_mail=memberDTO.getEmail();
        String content = "반갑습니다 "+id+"님 하단 링크를 클릭하면 이메일 인증이 완료됩니다.-boraCay 운영팀-"
        		+ "location.href='http://localhost:8080/SpringProject/main/index.do";
        email.setContent(content);
        email.setReceiver(e_mail);
        email.setSubject(id+"님 이메일 인증 메일");
        emailSender.SendEmail(email);
        
    	mav.addObject("display", "/member/write.jsp");
		mav.setViewName("/main/index");
		return mav;
	}
	
	@RequestMapping(value="/template/login.do", method=RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String,String> inMap,HttpSession session){
		MemberDTO memberDTO=null;
		System.out.println("inMap  "+ inMap.get("email"));
		System.out.println("pwd  "+ inMap.get("pwd"));
		ModelAndView mav = new ModelAndView();
		Map<String,String> outMap = memberDAO.login(inMap);
		if(outMap == null){
			mav.addObject("display", "/member/loginFail.jsp");
			mav.setViewName("/main/index");
			return mav;
		}
		memberDTO = memberDAO.emailAut(outMap.get("EMAIL"));
		String loginChk = null;
		
		
		
		if(outMap !=null){
			loginChk="Y";
			session.setAttribute("loginChk", loginChk);
			session.setAttribute("emailaut", outMap.get("EMAILAUT"));
			session.setAttribute("hname", outMap.get("HNAME"));
			session.setAttribute("cellphone", outMap.get("CELLPHONE"));
			session.setAttribute("firstname", outMap.get("FIRSTNAME"));
			session.setAttribute("lastname", outMap.get("LASTNAME"));
			session.setAttribute("email",outMap.get("EMAIL"));
		}
		
		return new ModelAndView("redirect:/main/index.do"); //이거 역활 하는애가 IndexController 니깐 이렇게 바로 불러 버리는거야(바로 주소 요청한거)
	}
	
	@RequestMapping(value="/template/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session){
		session.invalidate();
		return new ModelAndView("redirect:/main/index.do");
	}
	
	@RequestMapping(value="/template/modifyForm.do", method=RequestMethod.GET)
	public ModelAndView modifyForm(HttpSession session){
		ModelAndView mav = new ModelAndView();
		String email = (String)session.getAttribute("email");
		String[] array;
		array = email.split("@");
		String email1=array[0];
		String msg=".";
		boolean reserveOK = false;
		List<ReservateDTO> list = reservationDAO.getReserveEmail();
		for(ReservateDTO rDto : list){
			if (email1.equals(rDto.getSubscriber_mail1())){
				reserveOK = true;
			}
		}
		if(reserveOK){	
			ReservateDTO reservateDTO = reservationDAO.getReserveInfo(email1);
			mav.addObject("msg",msg);
			mav.addObject("reservateDTO",reservateDTO);
		}else{
			msg="예약내역이 없습니다.";
			mav.addObject("msg",msg);
		}
		
		mav.addObject("display", "/member/modifyForm.jsp");
		mav.setViewName("/main/index");
		return mav;
	}
	
	@RequestMapping(value="/member/modify.do", method=RequestMethod.POST)
	public ModelAndView modify(@RequestParam Map<String,String> map,HttpSession session){
		ModelAndView mav = new ModelAndView();
		
		
		memberDAO.modify(map);
		MemberDTO memberDTO = memberDAO.ModifyAfterMember(map.get("hname"));
		
		if(memberDTO !=null){
			session.setAttribute("emailaut", memberDTO.getEmailAut());
			session.setAttribute("hname", memberDTO.getHname());
			session.setAttribute("cellphone",memberDTO.getCellphone());
			session.setAttribute("firstname", memberDTO.getFirstname());
			session.setAttribute("lastname", memberDTO.getLastname());
		}
		
		mav.addObject("display", "/member/modify.jsp");
		mav.setViewName("/main/index");
		return mav;
	}
	
	
	@RequestMapping(value="/member/repwd.do", method=RequestMethod.POST)
	public ModelAndView repwd(@RequestParam Map<String,String> map,HttpSession session){
		ModelAndView mav = new ModelAndView();
		String pwd = map.get("pwd");
		String repwd = map.get("repwd");
		String newpwd = map.get("newpwd");
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		System.out.println("pwd? " + pwd);
		System.out.println("repwd? " + repwd);
		System.out.println("newpwd? " + newpwd);
		
		
		MemberDTO memberDTO = memberDAO.repwd(map);

		mav.addObject("display", "/member/pwdModify.jsp");
		mav.setViewName("/main/index");
		return mav;
	}
	
	
	
	@RequestMapping(value="/template/kakaologin.do", method=RequestMethod.GET)
	public ModelAndView kakaologin(@RequestParam Map<String,String> inMap,HttpSession session){
		MemberDTO memberDTO=null;
		System.out.println("id?  "+ inMap.get("id"));
		System.out.println("nickname  "+ inMap.get("nickname"));
		ModelAndView mav = new ModelAndView();
	
		String kakaoY = "Y";
		session.setAttribute("kakaoY", kakaoY);
		session.setAttribute("kakaoId", inMap.get("id"));
		session.setAttribute("kakaoNick", inMap.get("nickname"));
		return new ModelAndView("redirect:/main/index.do"); //이거 역활 하는애가 IndexController 니깐 이렇게 바로 불러 버리는거야(바로 주소 요청한거)
	}
	
	
	
}