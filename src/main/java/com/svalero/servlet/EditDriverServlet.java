package com.svalero.servlet;


import com.svalero.dao.Database;
import com.svalero.dao.DriverDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.UUID;

@WebServlet("/edit-driver")
@MultipartConfig
public class EditDriverServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html");
        String imagePath = request.getServletContext().getInitParameter("image-path");
        String id = request.getParameter("id");
        String team = request.getParameter("team");
        String name = request.getParameter("name");
        String nationality = request.getParameter("nationality");
        int number = Integer.parseInt(request.getParameter("number"));

        try {
            //Subir la imagen a la carpeta
            Part imagePart = request.getPart("image");
            String fileName;
            if(imagePart.getSize() == 0) {
                fileName = "no_image.jpg";
            } else {
                fileName = UUID.randomUUID() + ".jpg"; //Nombre Random
                InputStream fileStream = imagePart.getInputStream();
                Files.copy(fileStream, Path.of(imagePath + File.separator + fileName));
            }

            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();

            Database.jdbi.withExtension(DriverDAO.class, dao -> {
                dao.editDriver(team, name, nationality, number, fileName, id);
                return null;
            });

            response.sendRedirect("list-driver.jsp");
        } catch (ClassNotFoundException cnef){
            cnef.printStackTrace();
        }

    }
}
