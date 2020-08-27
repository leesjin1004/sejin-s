package ex01;
import java.io.*;                 //자바입출력 패키지를 불러와라
import javax.servlet.*;          //서블릿을 담당하는 패키지를 불러와라
import javax.servlet.http.*;     //프로토콜? 관련을 불러와라
import javax.servlet.annotation.WebServlet.*;
@WebServlet(urlPatterns = "/ex01/e01")       //url 패턴


public class Ex01 extends HttpSetvlet{

	@Override               //만들어진 빈껍데기에 내용을 채워넣겠다
	public void service(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>ex01</title>");
		out.println("</head>");
		out.println("<body>ex01</body>");
		out.println("</html>");
		
		
	}

}
