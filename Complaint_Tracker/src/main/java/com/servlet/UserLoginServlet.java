package com.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.UserDao;
import com.model.User;

@WebServlet("/userlogin")
public class UserLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(email, password);
        UserDao userDao = new UserDao();

        if (userDao.validateUser(user)) {
            
            HttpSession session = request.getSession();
            session.setAttribute("userEmail", email);

            response.sendRedirect("userDashboard.jsp");
        } else {
 
        	
            RequestDispatcher dispatcher = request.getRequestDispatcher("userlogin.jsp");
            dispatcher.forward(request, response);
        }
    }
    
}

