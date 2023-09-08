package com.svalero.servlet;


import com.svalero.dao.Database;
import com.svalero.dao.GPDAO;
import com.svalero.domain.GP;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

@WebServlet("/search-gp")
public class SearchGPServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String circuit = request.getParameter("circuit");
        Date date = Date.valueOf(request.getParameter("date"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();

            List<GP> gpList = Database.jdbi.withExtension(GPDAO.class, dao -> dao.searchGP(circuit, date));

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
            out.println("<title>Gran Premio encontrado</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container'>");
            out.println("<h2>Gran Premio encontrado:</h2>");
            out.println("<ol class=\"list-group list-group-numbered\">");
            for (GP gp : gpList) {
                out.println("<li class=\"list-group-item list-group-item-danger\">" + gp.toString() + "</li>");
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