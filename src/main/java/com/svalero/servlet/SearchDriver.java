package com.svalero.servlet;


import com.svalero.dao.Database;
import com.svalero.dao.DriverDAO;
import com.svalero.domain.Driver;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/search-driver")
public class SearchDriver extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        //TODO Modificar para 2 parámetros
        String nationality = request.getParameter("nationality");
        //String team = request.getParameter("team");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();

            List<Driver> driverList = Database.jdbi.withExtension(DriverDAO.class, dao -> dao.searchDriver(nationality));

            out.println("Pilotos encontrados: </div>");
            out.println("<ul>");
            for (Driver driver : driverList) {
                out.println("<li>" + driver.toString() + "</li>");
            }
            out.println("</ul>");

        } catch (ClassNotFoundException cnef) {
            cnef.printStackTrace();
        }
    }
}