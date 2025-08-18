package com.servlet;

import com.dao.ComplaintDao;
import com.model.Complaint;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/complaintHistory")
public class ComplaintHistoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("userEmail");

        ComplaintDao dao = new ComplaintDao();
        List<Complaint> complaints = dao.getComplaintHistory(email);

        request.setAttribute("complaints", complaints);
        request.getRequestDispatcher("complaintHistory.jsp").forward(request, response);
    }
}
