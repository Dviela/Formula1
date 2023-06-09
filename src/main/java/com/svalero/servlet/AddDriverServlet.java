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

@WebServlet("/add-driver")
public class AddDriverServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");
        String team = request.getParameter("team");
        String name = request.getParameter("name");
        //String number = request.getParameter("number");
        String nationality = request.getParameter("nationality");
        int number = Integer.parseInt(request.getParameter("number"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();
            Database.jdbi.withExtension(DriverDAO.class, dao -> {
                dao.addDriver(id, team, name, nationality, number);
                return null;
            });
            out.println("Piloto Registrado");
            response.sendRedirect("add-driver.jsp");
        } catch (ClassNotFoundException cnef){
            cnef.printStackTrace();
        }

    }
}
