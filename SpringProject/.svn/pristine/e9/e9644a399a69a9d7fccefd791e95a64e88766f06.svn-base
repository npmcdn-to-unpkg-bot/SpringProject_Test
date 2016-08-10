package email.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import email.bean.Email;
import email.bean.EmailSender;
import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Controller
@Component
public class EmailController {
	   @Autowired
	   private EmailSender emailSender;
	   
	   @Autowired
	   private MemberDAO memberDAO;
	   
	   @Autowired
	   private Email emailSet;
	   
	    @RequestMapping(value="/template/email.do",method=RequestMethod.GET)
	    public ModelAndView sendEmailAction (@RequestParam Map<String, Object> paramMap, @RequestParam String email) throws Exception {
	        ModelAndView mav = new ModelAndView();
	        MemberDTO memberDTO = memberDAO.emailAut(email);
	        
	        String id = "qoaqja";
	        String mailkey = memberDTO.getEmailAut();
	           String e_mail=memberDTO.getEmail();
	           String content = "하단 링크를 클릭하면 이메일 인증이 완료됩니다.-boraCay 운영팀-"
	                   + "http://localhost:8080/SpringProject/template/emailAccept.do?email="+mailkey;
	             emailSet.setContent(content);
	             emailSet.setReceiver(e_mail);
	             emailSet.setSubject(email+"님 이메일 인증 메일");
	             emailSender.SendEmail(emailSet);
	                 mav= new ModelAndView("redirect:/main/index.do");
	                 return mav;

	    }
	    
	    @RequestMapping(value="/template/emailAccept.do",method=RequestMethod.GET)
	       public ModelAndView emailAcceptAction (@RequestParam String email,ModelMap model){
	          ModelAndView mav = new ModelAndView();
	          System.out.println("메일에서 불러오는 emailaut값");
	          System.out.println(email);
	          String emailaut=email;
	          memberDAO.emailAcceptAction(emailaut);
	          
	          mav=new ModelAndView("redirect:/template/logout.do");
	          return mav;
	       }
	    
}
