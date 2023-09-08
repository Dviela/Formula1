<%@ page import="com.svalero.dao.Database" %>
<%@ page import="com.svalero.dao.DriverDAO" %>
<%@ page import="com.svalero.domain.Driver" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

<script>
function confirmDelete() {
    return confirm("¿Seguro que desea eliminar este piloto?");
}
</script>



<section class="py-1 text-center container">

<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">Lista de Pilotos</li>
  </ol>
</nav>

    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h2 class="fw-light">Pilotos</h2>
        <p class="lead text-muted">Toda la información de los Pilotos del mundial 2023</p>
        <p>
          <a href="search-driver.jsp" class="btn btn-primary my-2">Buscar Piloto</a>
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

       List<Driver> driverList = Database.jdbi.withExtension(DriverDAO.class, DriverDAO::getDriver);
       for (Driver driver : driverList) {
       %>

            <div class="col">
              <div class="card shadow-sm">
                <img src="../f1_data/<%= driver.getImage() %>" class="bd-placeholder-img card-img-top" style="max-width: 430px; max-height: 260px;"/>
                <div class="card-body">
                  <p class="card-text"> <b><%= driver.getName() %></b></p>
                  <p class="card-text"> <%= driver.getNationality() %></p>
                  <div class="d-flex justify-content-between align-items-center">
                  <a href="edit-driver.jsp?id=<%= driver.getId() %>&action=edit&name=<%= driver.getName() %>&number=<%= driver.getNumber() %>&nationality=<%= driver.getNationality() %>&team=<%= driver.getTeamId() %>"
                  class="btn btn-sm btn-outline-dark">Editar Piloto</a>
                  <a href="view-details-dr.jsp?id=<%= driver.getId() %>&team=<%= driver.getTeamId() %>" class="btn btn-sm btn-outline-primary">Ver detalles</a>
                  <a href="remove-driver?id=<%= driver.getId() %>" class="btn btn-sm btn-outline-danger" onclick="return confirmDelete();">Eliminar</a>
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


