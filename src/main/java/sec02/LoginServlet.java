package sec02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//브라우저에게 지금 나가는 데이터의 MINE-TYPE : text/html 형식이고, utf-8인코딩으로 해석
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out= response.getWriter();
		
		//서블릿에서 HTML Code  작업하기
		String u_id = request.getParameter("u_di");
		String u_pw = request.getParameter("u_pw");
		
		String data = "<html>";
		data += "<body>";
		data += "아이디" + u_id;
		data += "비밀번호" + u_pw;	
		data += "</body>";
		data += "</html>";
	
		out.print(data);
	}

}
