package com.svalero.servlet;

import com.svalero.dao.Database;
import com.svalero.dao.DriverDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/remove-driver")
public class RemoveDriverServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();

            Database.jdbi.withExtension(DriverDAO.class, dao -> {
                dao.removeDriver(id);
                return null;
            });

            response.sendRedirect("list-driver.jsp");
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        }
        }
    }



