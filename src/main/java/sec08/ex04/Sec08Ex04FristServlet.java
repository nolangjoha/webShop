package sec08.ex04;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Sec08Ex04FristServlet")
public class Sec08Ex04FristServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sec08Ex04FristServlet() {
        super();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	request.setCharacterEncoding("utf-8");
    	response.setContentType("text/html;charset=utf-8");
    	
    	//방법4: 앞에 1,2,3과는 다르게 브라우저 주소가 면경이 안된다. 서버에서 주소가 이동되므로, 브라우저 주소가 변경되지 않는다.
    	// 방법1,2,3 은 주소가 브라우저로 보내지고 해석되어 브라우저에서 변경된 주소가 요청이 발생된다.
    	RequestDispatcher dispatch = request.getRequestDispatcher("/Sec08Ex04SecondServlet");
    	dispatch.forward(request, response);
    	
    	
    
    
    }

}
