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

@WebServlet("/add-driver")
@MultipartConfig
public class AddDriverServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String filePath = "C:/Programas/apache-tomcat-10.1.7/webapps/f1_data"; //Enlace a carpeta de imagenes

        String id = request.getParameter("id");
        String team = request.getParameter("team");
        String name = request.getParameter("name");
        //String number = request.getParameter("number");
        String nationality = request.getParameter("nationality");
        int number = Integer.parseInt(request.getParameter("number"));

        try {
            //Subir la imagen a la carpeta
            Part imagePart = request.getPart("image");
            //TODO Controlar que no tenga imagen
            String fileName = UUID.randomUUID() + ".jpg"; //Nombre Random
            InputStream fileStream = imagePart.getInputStream();
            Files.copy(fileStream, Path.of(filePath + File.separator + fileName));

            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();
            Database.jdbi.withExtension(DriverDAO.class, dao -> {
                dao.addDriver(id, team, name, nationality, number, fileName);
                return null;
            });



            out.println("Piloto Registrado");
            response.sendRedirect("add-driver.jsp");
        } catch (ClassNotFoundException cnef){
            cnef.printStackTrace();
        }

    }
}
