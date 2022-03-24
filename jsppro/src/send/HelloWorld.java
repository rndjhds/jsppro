package send;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class HelloWorld
 */
@WebServlet(description = "처음 작성하는 자바 서블릿", urlPatterns = { "/HelloWorld" })
public class HelloWorld extends HttpServlet {					// urlPatterns의 이름으로 자바서블릿을 찾아온다.
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// 출력스트림											// 프로젝트명
		
		// 현재 문서의 한글값을 인코딩(utf-8)을 시켜준다.
		response.setContentType("text/html; charset=UTF-8"); // 한글값 깨지는 것을 방지
		PrintWriter out = response.getWriter();	// 출력 스트림 객체
		HttpSession session = request.getSession();	// 세션 객체
		
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>안녕 하세요?</h1>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
