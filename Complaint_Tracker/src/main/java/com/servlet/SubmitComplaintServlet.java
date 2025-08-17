package com.servlet;

import com.dao.ComplaintDao;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/submitComplaint")
public class SubmitComplaintServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = (String) request.getSession().getAttribute("userEmail");
        int flatNumber = Integer.parseInt(request.getParameter("flatNumber"));
        String complaintText = request.getParameter("complaint");
        String phone = request.getParameter("phone");

        ComplaintDao dao = new ComplaintDao();
        boolean inserted = dao.insertComplaint(name, email, flatNumber, complaintText, phone);

        if(inserted) {
            response.sendRedirect("viewComplaints"); 
        } else {
            response.getWriter().println("Failed to submit complaint");
        }
    }

}
