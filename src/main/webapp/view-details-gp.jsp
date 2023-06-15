<%@ page import="com.svalero.dao.Database" %>
<%@ page import="com.svalero.dao.GPDAO" %>
<%@ page import="com.svalero.domain.GP" %>
<%@ page import="java.time.format.DateTimeFormatter" %>


<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

<%
    String GPId = request.getParameter("id");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Database.connect();

    GP gp = Database.jdbi.withExtension(GPDAO.class, dao -> dao.getGPs(GPId));

%>

<div class="container">
    <div class="card mb-3">
        <div class="text-center">
          <img src="../f1_data/circuit.jpg" class="bd-placeholder-img card-img-top" style="max-width: 1000px; max-height: 1000px;">
          <div class="card-body">
            <h5 class="card-title">Fecha Carrera: <%= gp.getDate().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) %></h5>
            <p class="card-text">Circuito: <%= gp.getCircuit() %></p>
            <p class="card-text">Ganador: <%= gp.getWinner() %></p>
            <p class="card-text"><small class="text-muted">ID Gran Premio: <%= gp.getId() %></small></p>
          </div>
        </div>
        </div>
    </div>

<%@include file="includes/footer.jsp"%>