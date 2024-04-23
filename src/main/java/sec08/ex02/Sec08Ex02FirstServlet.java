package sec08.ex02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Sec08Ex02FirstServlet")
public class Sec08Ex02FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sec08Ex02FirstServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8"); 
 		PrintWriter out = response.getWriter();
 		//방법2) 단순이동
 		// 결과 : 브라우저 주소가 변경된다/변경주소가 클라이언트로 보내지고 해석되어 진행된다.
 		response.sendRedirect("/Sec08Ex02SecondServlet");
 		
		
		
		
	}

}
