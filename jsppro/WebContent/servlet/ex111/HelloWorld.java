package send;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

@WebServlet(description = "처음작성하는 서블릿클래스", urlPatterns = { "/HelloWorld" })
public class HelloWorld extends HttpServlet {
	
	/*
	 * 자바 서블릿은 MVC모델에서 Controler를 만드는데 쓰이는 언어이다.
	 * 자바 서블릿은 JSP처럼 내장 객체가 없어서 request, response로 객체를 만들어야 한다. 
	 */

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException{

        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();	// 출력 스트림 생성
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Hello World!</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>안녕 하세요!!</h1>");
        out.println("</body>");
        out.println("</html>");

    }
}
