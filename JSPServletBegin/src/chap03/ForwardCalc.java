package chap03;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/03forwardCalc.do")
public class ForwardCalc extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int firstNum = Integer.parseInt(request.getParameter("firstNum"));
		int secondNum =  Integer.parseInt(request.getParameter("secondNum"));
		int sum = 0;
		
		for (int i=firstNum; i<=secondNum; i++){
			sum += i;
		}
		
		request.setAttribute("sum", sum);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap03_standardAction/03forwardCalcView.jsp");
		dispatcher.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
