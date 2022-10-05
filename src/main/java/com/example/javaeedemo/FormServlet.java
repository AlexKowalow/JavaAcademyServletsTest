package com.example.javaeedemo;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "FormServlet", urlPatterns = "/calculateServlet")
public class FormServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String height = request.getParameter("height");
        String weight = request.getParameter("weight");

        try {
            double bmi = calculateBMI(
                    Double.parseDouble(weight),
                    Double.parseDouble(height));

            request.setAttribute("bmi", bmi);
            response.setHeader("Test", "Success");
            response.setHeader("BMI", String.valueOf(bmi));

            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<B>Servlet works</B>");
    }

    private Double calculateBMI(Double weight, Double height) {
        return weight / (height * height);
    }
}