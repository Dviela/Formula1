<%@ page import="com.svalero.dao.Database" %>
<%@ page import="com.svalero.dao.GPDAO" %>
<%@ page import="com.svalero.domain.GP" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%@include file="includes/header.jsp"%>

<div class="album py-5 bg-dark">
    <div class="container">

        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <%
                int pageSize = 9; / Tamaño por página
                int currentPage = 1; // Página actual
                int startIndex = (currentPage - 1) * pageSize; // Inicio página actual

                Class.forName("com.mysql.cj.jdbc.Driver");
                Database.connect();

                List<GP> gpList = Database.jdbi.withExtension(GPDAO.class, GPDAO::getGP);
                int totalGPs = gpList.size(); // Total de GPs

                int endIndex = Math.min(startIndex + pageSize, totalGPs); // Índice de fin página actual

                for (int i = startIndex; i < endIndex; i++) {
                    GP gp = gpList.get(i);
            %>

            <div class="col">
                <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">GP</text></svg>
                    <div class="card-body">
                        <p class="card-text"><%= gp.getDate() %></p>
                        <p class="card-text">Circuito: <%= gp.getIdCircuit() %></p>
                        <p class="card-text">Ganador: <%= gp.getIdWinner() %> </p>
                        <p class="card-text">ID del Gran Premio: <%= gp.getId() %></p>
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="add-gp.jsp?id=<%= gp.getId() %>&action=edit& %>" class="btn btn-sm btn-outline-info">Editar GP</a>
                            <a href="remove-gp?id=<%= gp.getId() %>" class="btn btn-outline-danger">Eliminar</a>
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
                <% int totalPages = (int) Math.ceil((double) totalGPs / pageSize); %>

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
