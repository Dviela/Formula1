<%@ page import="com.svalero.dao.Database" %>
<%@ page import="com.svalero.dao.DriverDAO" %>
<%@ page import="com.svalero.domain.Driver" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%@include file="includes/header.jsp"%>

<div class="album py-5 bg-dark">
    <div class="container">

        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <%
                int pageSize = 9; // Tamaño por página
                int currentPage = 1; // Página actual
                int startIndex = (currentPage - 1) * pageSize; // Inicio página actual

                Class.forName("com.mysql.cj.jdbc.Driver");
                Database.connect();

                List<Driver> driverList = Database.jdbi.withExtension(DriverDAO.class, DriverDAO::getDriver);
                int totalDrivers = driverList.size(); // Total de pilotos

                int endIndex = Math.min(startIndex + pageSize, totalDrivers); // Índice de fin página actual

                for (int i = startIndex; i < endIndex; i++) {
                    Driver driver = driverList.get(i);
            %>

            <div class="col">
                <div class="card shadow-sm">
                    <img src="../f1_data/<%= driver.getImage() %>" class="bd-placeholder-img card-img-top"/>
                    <div class="card-body">
                        <p class="card-text"> <b><%= driver.getName() %></b></p>
                        <p class="card-text"> <%= driver.getNationality() %></p>
                        <p class="card-text">Numero: <%= driver.getNumber() %> </p>
                        <p class="card-text">ID: <%= driver.getId() %></p>
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="add-driver.jsp?id=<%= driver.getId() %>&action=edit& %>" class="btn btn-outline-info">Editar Piloto</a>
                            <a href="remove-driver?id=<%= driver.getId() %>" class="btn btn-outline-danger">Eliminar</a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>

        </div>
        <br>
        <nav>
            <ul class="pagination justify-content-center">
                <%-- Calcula número total de páginas --%>
                <% int totalPages = (int) Math.ceil((double) totalDrivers / pageSize); %>

                <%-- Enlaces de paginación --%>
                <% for (int pageNumber = 1; pageNumber <= totalPages; pageNumber++) { %>
                    <li class="page-item <% if (currentPage == pageNumber) { %>active<% } %>">
                        <a class="page-link" href="?page=<%= pageNumber %>"><%= pageNumber %></a>
                    </li>
                <% } %>
            </ul>
        </nav>
    </div>
</div>

<%@include file="includes/footer.jsp"%>

