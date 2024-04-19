package sec02;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//servlet파일은 절대 rus as로 실행하면 안된다. 실행하고 싶으면 
// 실행주소 localhost:9090/input  
@WebServlet("/input")
public class InputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public InputServlet() {
        super();
    }

    //HttpServletRequest Request(Request 객체/ 요청) : 클라이언트에서 보낸 모든 전송정보를 담당하는 객체
    //HttpServletResponse response(response 객체/ 응답) : 서버에서 가지고 있는 정보를 클라이언트 에게 보낼 때 담당하는 응압 객체
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost 매서드 호출");
		
		String user_id = request.getParameter("user_id");
		String pass_pw = request.getParameter("user_pw");
		
		System.out.println("아이디는?" + user_id);
		System.out.println("비밀번호는?" + pass_pw); 
    }

    	
    
}
