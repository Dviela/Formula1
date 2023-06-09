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
       Class.forName("com.mysql.cj.jdbc.Driver");
       Database.connect();

       List<Driver> driverList = Database.jdbi.withExtension(DriverDAO.class, DriverDAO::getDriver);
       for (Driver driver : driverList) {
       %>

            <div class="col">
              <div class="card shadow-sm">
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
                <div class="card-body">
                  <p class="card-text"> <b><%= driver.getName() %></b></p>
                  <p class="card-text"> <%= driver.getNationality() %></p>
                  <p class="card-text">Numero: <%= driver.getNumber() %> </p>
                  <p class="card-text">ID: <%= driver.getId() %></p>
                  <div class="d-flex justify-content-between align-items-center">
                  <a href="add-driver.jsp?id=<%= driver.getId() %>&action=edit& %>"
                  class="btn btn-sm btn-outline-secondary">Editar Piloto</a>
                  <a href="remove-driver?id=<%= driver.getId() %>" class="btn btn-danger">Eliminar</a>
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