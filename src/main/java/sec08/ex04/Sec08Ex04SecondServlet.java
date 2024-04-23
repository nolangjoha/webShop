package sec08.ex04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Sec08Ex04SecondServlet")
public class Sec08Ex04SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Sec08Ex04SecondServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		out.println("dispatch을 이용한 forward실습");
		out.println("</body></html>");
		
		
	}

}
