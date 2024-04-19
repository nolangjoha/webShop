package sec02;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//get방식과 post방식 요청 동시에 처리하기(p.203)
@WebServlet("/Loginmethod")
public class LoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet2() {
    }
    
    // 클라이언트에 의해 get 요청 방식일 경우 호출되는 메서드
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet메서드 호출");
	    doHandle(request, response);
	
    }

    // 클라이언트에서 post 요청방식일 경우 호출되는 메서드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost메서드 호출");
	    doHandle(request, response);	
	
	}

	//공통메서드. get방식, post방식 둘다 호출하기.
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doHamdle 메서드 호출");
		
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		
		//db연동작업 : ID와 PW가 일치하는지 여부  //이 작업을 여기서 합니다.
		
		System.out.println("아이디: " + u_id);
		System.out.println("비밀번호: " + u_pw);
		
	}
	
	
	
}
