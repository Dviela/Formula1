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

        String nationality = request.getParameter("nationality");
        String team = request.getParameter("team");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();

            List<Driver> driverList = Database.jdbi.withExtension(DriverDAO.class, dao -> dao.searchDriver(nationality, team));

            // Código HTML para resultado de la busqueda
            out.println("<!DOCTYPE html>");
            out.println("<html lang='en'>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
            out.println("<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'>");
            out.println("<style>");
            out.println("body { font-family: Arial, sans-serif;\n background-color: rgba(133, 122, 126, .7);}");
            out.println(".container { margin-top: 50px; }");
            out.println("</style>");
            out.println("<title>Pilotos encontrados</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container'>");
            out.println("<h2>Pilotos encontrados:</h2>");
            out.println("<ol class=\"list-group list-group-numbered\">");
            for (Driver driver : driverList) {
                out.println("<li class=\"list-group-item list-group-item-danger\">" + driver.toString() + "</li>");
            }
            out.println("</ol>");
            out.println("<br>");
            out.println("<a href='javascript:history.back()' class='btn btn-danger'>Volver</a>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        } catch (ClassNotFoundException cnef) {
            cnef.printStackTrace();
        }
    }
}