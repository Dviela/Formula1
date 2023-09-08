package com.svalero.servlet;

import com.svalero.dao.Database;
import com.svalero.dao.GPDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/edit-gp")
public class EditGPServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html");

        String id = request.getParameter("id");
        Date date = Date.valueOf(request.getParameter("date"));
        String circuit = request.getParameter("circuit");
        String winner = request.getParameter("winner");


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();

            Database.jdbi.withExtension(GPDAO.class, dao -> {
                dao.editGP(date, circuit, winner, id);
                return null;
            });

            response.sendRedirect("list-gp.jsp");
        } catch (ClassNotFoundException cnef){
            cnef.printStackTrace();
        }

    }
}
