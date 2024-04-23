package sec09.ex02;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*쿠키목적 : 쿠키정보를 서버측의 메모리 또는 데이터베이스에 저장하지 않고, 
   		   사용자 측(클라이언트)에 저장하여, 서버측의 부담을 덜고자 할때 사용.
  쿠키내용 : 사용자의 컴퓨터에 저장되므로 보안적이지 않은 정보이다.
*/
//쿠키를 사용자의 브라우저에 저장하는 예제.
@WebServlet("/SetCookieValue")
public class SetCookieValue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SetCookieValue() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//1)
		response.setContentType("text/html;charset=utf-8"); //나 정보 보낼건데 타입은 text에 html이니까 utf-8로 해석해
		
		//클라이언트(브라우저) 에게 보내는 작업/ 객체이름 out는 마음대로 써도 되나 굳어진 이름으로 바꾸지 마라.
		//2)
		PrintWriter out = response.getWriter();
		Date d = new Date();
		
		Cookie cookie = new Cookie("cookieTest", URLEncoder.encode("JSP프로그래밍입니다.", "utf-8"));
		cookie.setMaxAge(1 * 24 * 60 * 60); //1일에 대한 초시간
	
		// 이 작업을 하면, 클라이언트(브라우저)에게 쿠키정보가 전송된다. 얘는 response 객체로 알아서 나간다.
		response.addCookie(cookie); 
		
		//3)
		out.println("현재시간 : " + d);
		out.println("<br> 문자열을 Cookie에 저장합니다.");
		
		
		
	}

	
	

}
