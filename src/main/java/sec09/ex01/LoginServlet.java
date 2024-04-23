package sec09.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Sec09Ex01LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id");  //로그인 하면 user_id 에 admin
		String user_pw = request.getParameter("user_pw");  //로그인 하면 user_pw 에 1234
		
		//hidden필드의 값을 여기서 확인한다.
		String user_address = request.getParameter("user_address"); 
		String user_email = request.getParameter("user_email"); 
		String user_hp = request.getParameter("user_hp"); 
		
		//db를 이용하여 아이디 및 비밀번호 존재체크작업을 해야함.
		//사용자가 입력한 로그인 정보가 admin 이고, 1234 일 경우 , if 문은 true가 된다.
		if(user_id.equals("admin") && user_pw.equals("1234")) {
			//인증된 사용자로 처리작업 - session 객체를 이용.
			// 문자열이 같다를 표현 할때 = 연산자가 아니라 equals를 사용한다. = 연산자는 숫자에 사용
			
			//브라우저에게 발급해준 JSessionID 의 식별자 값을 활성화 된 서버측 메모리에 "auth"란 키 이름으로 user_id 변수의 값을 저장
			request.getSession().setAttribute("auth", user_id);   //이게 사용자를 인증된 사용자로 바꿔주는 작업이다.
			
			response.sendRedirect("/sec09/main.jsp"); //로그인 후 여기로 주소가 이동
			
		}else { 
//			response.setCharacterEncoding("utf-8");
			//브라우저에 보내는 한글 데이터 인코딩과 곤텐트 mime type작업
			response.setContentType("text/html;charset=utf-8"); // 아래 보내지는 내용에 대한 보출 설명 : outprint 구문들은 text, html정보다.

			//인증이 실패.  	//다시 로그인 페이지로 돌아가게 함.  
			//클라이언트로 사용하는 브라우저에 아래 정보가 전송된다.
			//브라우저로 전송된다.
			PrintWriter out = response.getWriter();
			out.print("<script type='text/javascript'>");  // 이 코드를 읽고
			out.print("alert('로그인 정보가 틀렸습니다. 다시 확인해주세요');");  // 알라트 출력하고
			out.print("location.href='/sec09/login.jsp';");  //로그인 페이지 다시 불러옴.
			out.print("</script>");
			
		}
		
	}

}
