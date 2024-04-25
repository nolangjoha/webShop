package sec08.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhost:9090/Sec08Ex01FirstServlet
@WebServlet("/Sec08Ex01FirstServlet")
public class Sec08Ex01FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Sec08Ex01FirstServlet() {
        super();
       
    }

	//get 요청시 동작
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//서버에서 클라이언트로 보내는 데이터 처리에 대한 처리를 MIME - TYPE정보와 인코딩 방식으로 하라.
		response.setContentType("text/html;charset=utf-8"); //text/html방식으로 보낼테니까 charset=utf-8로 처리해라
 		PrintWriter out = response.getWriter();

 		//서버에서 클라이언트로 보내는 응답정보속에 아래 헤더작업도 추가되어 보내진다.
 		// 헤더를 클라이언트의 브라우저가 읽고, 브라우저의 내용을 새로고침 하는데 10초 후 다음 url 주소로 새로고침 하겠다.
 		//방법1) n초 후 새로고침으로 이동 
 		// 결과 : 브라우저 주소가 변경된다/변경주소가 클라이언트로 보내지고 해석되어 진행된다.
 		response.addHeader("Refresh","5;url=/Sec08Ex01SecondServlet");
 			        //Refresh는 예약어 (새로고침 하겠다.) 
		
	}

}
