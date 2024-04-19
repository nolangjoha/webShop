package sec01.ex01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


    //원래 있던 코드 - @WebServlet("/FirstServlet")
@WebServlet("/First") //매핑주소 설정. 매핑주소는 브라우저에서 사용하며, FirstServlet 클래스 파일을 호출한다.
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FirstServlet() {
        super();

    }

	//서블릿 클래스 파일이 첫 로딩되면서 init()메서드는 단 1번 호출
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 매서드 호출");
	}

	
	public void destroy() {
		System.out.println("destroy 매서드 호출");
	}

	
	//클라이언트에서 보내는 방식이 get 요청이였을 때 호출되는 메서드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 매서드 호출");
	// 원래있던 코드-	response.getWriter().append("Served at: ").append(request.getContextPath());
	// 위 코드 있었더니 "Served at: "로 시작하는 문구가 브라우저에 떴음.
	}

	//클라이언트에서 보내는 방식이 post 요청이였을 때 호출되는 메서드
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost 매서드 호출");
		}
	
}
