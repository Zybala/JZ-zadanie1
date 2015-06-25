/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rome0_000
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rome0_000
 */


import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   public index() {
        super();
    }
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext context = request.getServletContext();
		Integer counter = (Integer)context.getAttribute("counter");
		counter = counter != null ? counter : 0;
		
		int maxParticipants = 5;
		
		if (counter == maxParticipants)
		{
			response.sendRedirect("PozaLimitem.jsp");
		}
		else
		{
		
			HttpSession session = request.getSession();
					
			/*if (session.getAttribute("state") != null)
			{
				response.sendRedirect("AlreadyRegistered.jsp");
			}*/
			        String state = "registered";
				session.setAttribute("state", state);
						
				String name = request.getParameter("imie");
				String surname = request.getParameter("nazwisko");
				String email = request.getParameter("email");	
				String company = request.getParameter("firma");
				String origin = request.getParameter("origin");
				String position = request.getParameter("pozycja");
				
				Participant participant = new Participant(name, surname, email, company, origin, position);
								
				counter++;
				context.setAttribute("counter", counter);
				
				response.sendRedirect("Rejestracja.jsp");
			}
		}
	}


