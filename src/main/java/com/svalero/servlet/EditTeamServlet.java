package com.svalero.servlet;

import com.svalero.dao.Database;
import com.svalero.dao.TeamDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/edit-team")
public class EditTeamServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html");

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String country = request.getParameter("country");
        String engine = request.getParameter("engine");


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();

            Database.jdbi.withExtension(TeamDAO.class, dao -> {
                dao.editTeam(name, country, engine, id);
                return null;
            });

            response.sendRedirect("list-team.jsp");
        } catch (ClassNotFoundException cnef){
            cnef.printStackTrace();
        }

    }
}
