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
                <img src="../f1_data/<%= driver.getImage() %>" class="bd-placeholder-img card-img-top"/>
                <div class="card-body">
                  <p class="card-text"> <b><%= driver.getName() %></b></p>
                  <p class="card-text"> <%= driver.getNationality() %></p>
                  <p class="card-text">Numero: <%= driver.getNumber() %> </p>
                  <p class="card-text">ID: <%= driver.getId() %></p>
                  <div class="d-flex justify-content-between align-items-center">
                  <a href="edit-driver.jsp?id=<%= driver.getId() %>&action=edit&name=<%= driver.getName() %>&number=<%= driver.getNumber() %>&nationality=<%= driver.getNationality() %>&team=<%= driver.getTeamId() %>"
                  class="btn btn-outline-info">Editar Piloto</a>
                  <a href="remove-driver?id=<%= driver.getId() %>" class="btn btn-outline-danger" onclick="return confirmDelete();">Eliminar</a>
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


