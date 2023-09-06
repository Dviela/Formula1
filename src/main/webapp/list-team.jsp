<%@ page import="com.svalero.dao.Database" %>
<%@ page import="com.svalero.dao.TeamDAO" %>
<%@ page import="com.svalero.domain.Team" %>
<%@ page import="java.util.List" %>

<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

<script>
function confirmDelete() {
    return confirm("¿Seguro que desea eliminar esta escudería?");
}
</script>

<section class="py-1 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h2 class="fw-light">Escuderías</h2>
        <p class="lead text-muted">Equipos de constructores de la Formula1</p>
        <p>
          <a href="search-team.jsp" class="btn btn-primary my-2">Buscar Escudería</a>
        </p>
      </div>
    </div>
  </section>

    <div class="album py-5 bg-dark">
        <div class="container">

             <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
               <%
                   Class.forName("com.mysql.cj.jdbc.Driver");
                   Database.connect();

                   List<Team> teamList = Database.jdbi.withExtension(TeamDAO.class, TeamDAO::getTeams);
                   for (Team team : teamList) {
               %>

                    <div class="col">
                      <div class="card shadow-sm">
                        <img src="../f1_data/circuit.jpg" class="bd-placeholder-img card-img-top"style="max-width: 430px; max-height: 260px;"/>
                        <div class="card-body">
                          <p class="card-text"> <b> Equipo: <%= team.getName() %> </b> </p>
                          <p class="card-text">Pais: <%= team.getCountry() %> </p>
                          <p class="card-text">Motor: <%= team.getEngine() %> </p>
                          <small class="text-muted"><%= team.getId() %></small>
                          <div class="d-flex justify-content-between align-items-center">
                          <a href="edit-team.jsp?id=<%=team.getId() %>&name=<%= team.getName() %>&action=edit&country=<%= team.getCountry() %>&engine=<%= team.getEngine() %>"
                          class="btn btn-sm btn-outline-info">Editar Escudería</a>
                          <a href="remove-team?id=<%= team.getId() %>" class="btn btn-sm btn-outline-danger" onclick="return confirmDelete();">Eliminar</a>
                          </div>
                        </div>
                      </div>
                    </div>
               <%
                  }
               %>

             </div>
        </div>
      </div>

<%@include file="includes/footer.jsp"%>
