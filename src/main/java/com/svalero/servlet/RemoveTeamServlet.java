package com.svalero.servlet;

import com.svalero.dao.Database;
import com.svalero.dao.TeamDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/remove-team")
public class RemoveTeamServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();

            Database.jdbi.withExtension(TeamDAO.class, dao -> {
                dao.removeTeam(id);
                return null;
            });

            response.sendRedirect("list-team.jsp");
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        }
        }
    }



