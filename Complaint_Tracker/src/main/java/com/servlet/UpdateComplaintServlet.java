package com.servlet;

import com.dao.ComplaintDao;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/updateComplaint")
public class UpdateComplaintServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("userEmail");

        try {
            int complaintId = Integer.parseInt(request.getParameter("complaintid"));
            String newText = request.getParameter("complaint");   
            String action = request.getParameter("action");

            ComplaintDao dao = new ComplaintDao();

            if ("update".equalsIgnoreCase(action)) {
                if (newText != null && !newText.trim().isEmpty()) {
                    int rows = dao.updateComplaint(complaintId, email, newText.trim());
                    System.out.println("Update rows count: " + rows);
                }
            } else if ("cancel".equalsIgnoreCase(action)) {
                int rows = dao.cancelComplaint(complaintId, email);
                System.out.println("Cancel rows count: " + rows);
            }
            response.sendRedirect("viewComplaints");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
