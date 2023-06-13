<%@ page import="com.svalero.dao.Database" %>
<%@ page import="com.svalero.dao.GPDAO" %>
<%@ page import="com.svalero.domain.GP" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%@include file="includes/header.jsp"%>

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

                   List<GP> gpList = Database.jdbi.withExtension(GPDAO.class, GPDAO::getGP);
                   for (GP gp : gpList) {
               %>

                    <div class="col">
                      <div class="card shadow-sm">
                        <img src="../f1_data/circuit.jpg" class="bd-placeholder-img card-img-top"/>
                        <div class="card-body">
                          <p class="card-text"> <%= gp.getDate() %></p>
                          <p class="card-text">Circuito: <%= gp.getCircuit() %></p>
                          <p class="card-text">Ganador: <%= gp.getWinner() %> </p>
                          <p class="card-text">ID del Gran Premio: <%= gp.getId() %></p>
                          <div class="d-flex justify-content-between align-items-center">
                          <a href="edit-gp.jsp?id=<%=gp.getId() %>&circuit=<%= gp.getWinner() %>&action=edit&winner=<%= gp.getCircuit() %>&date=<%= gp.getDate() %>"
                          class="btn btn-sm btn-outline-info">Editar GP</a>
                          <a href="remove-gp?id=<%= gp.getId() %>" class="btn btn-outline-danger" onclick="return confirmDelete();">Eliminar</a>
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
