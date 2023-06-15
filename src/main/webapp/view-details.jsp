<%@ page import="com.svalero.dao.Database" %>
<%@ page import="com.svalero.dao.DriverDAO" %>
<%@ page import="com.svalero.domain.Driver" %>
<%@ page import="com.svalero.dao.TeamDAO" %>
<%@ page import="com.svalero.domain.Team" %>

<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

<%
    String driverId = request.getParameter("id");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Database.connect();

    Driver driver = Database.jdbi.withExtension(DriverDAO.class, dao -> dao.getDrivers(driverId));
    //String teamName = Database.jdbi.withExtension(TeamDAO.class, dao -> dao.getTeamNameById(driver.getTeamId()));

%>

<div class="container">
    <div class="card mb-3">
        <div class="text-center">
          <img src="../f1_data/<%= driver.getImage() %>" class="bd-placeholder-img card-img-top" style="max-width: 1000px; max-height: 1000px;">

          <div class="card-body">
            <h5 class="card-title"><b><%= driver.getName() %></b></h5>
            <p class="card-text"> ID Escudería: <%= driver.getTeamId() %></p>
            <p class="card-text"> <%= driver.getNationality() %></p>
            <p class="card-text">Numero: <%= driver.getNumber() %> </p>
            <p class="card-text"><small class="text-muted">ID Piloto: <%= driver.getId() %></small></p>
          </div>
        </div>
        </div>
    </div>

<%@include file="includes/footer.jsp"%>