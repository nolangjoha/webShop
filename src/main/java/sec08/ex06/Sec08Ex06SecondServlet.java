package sec08.ex06;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Sec08Ex06SecondServlet")
public class Sec08Ex06SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Sec08Ex06SecondServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		//처음 request 객체의 연장된 의미로 실행되어 null이 아니라 정상적으로 참조 된다.
		String address = (String) request.getAttribute("address");
								//request.setAttribute("address"
		out.println("<html><body>");
		out.println("주소 :" + address);
		out.println("<br>");
		out.println("redirect를 이용한 바인딩 실습");		
		out.println("</body></html>");
		
			
		
	}

}













