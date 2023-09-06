<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

    <script>
      function showAlert() {
        alert("Información de la Escudería modificada");
      }
    </script>
    <script>
      function confirmModify() {
          return confirm("¿Seguro que desea modificar los datos de esta Escudería?");
    }
    </script>

    <%
        String id = request.getParameter("id");
        if (id == null) id = "";
        String name = request.getParameter("name");
        if (name == null) name = "";
        String country = request.getParameter("country");
        if (country == null) country = "";
        String engine = request.getParameter("engine");
        if (engine == null) engine = "";
    %>

    <div class="container">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
            <li class="breadcrumb-item"><a href="list-gp.jsp">Escuderias</a></li>
            <li class="breadcrumb-item active" aria-current="page">Editar Escuderias</li>
          </ol>
        </nav>

            <form action="edit-team" method="post" onsubmit="showAlert()">
                    <div class="col-md-6">
                        <label for="exampleFormControlTextarea1" class="form-label">Id Escuderia</label>
                        <input type="text" id="id" name="id" class="form-control" value='<%= id %>' readonly>
                    </div>
                    <div class="col-md-6">
                        <label for="exampleFormControlTextarea1" class="form-label">Nombre</label>
                        <input type="text" id="name" name="name" class="form-control" value='<%= name %>' >
                    </div>
                    <div class="col-md-6">
                               <div>
                                   <label for="exampleFormControlTextarea1" class="form-label">Pais: </label>
                                   <input type="text" id="country" name="country" class="form-control" value='<%= country %>' >
                               </div>
                           <br>
                          <div class="col-md-6">
                            <label for="exampleFormControlTextarea1" class="form-label">Fabricante Motor: </label>
                            <input type="text" id="engine" name="engine" class="form-control" value='<%= engine %>' >
                          </div>
                          </div>
                          <br>
                          <input class="btn btn-danger" type="submit" value="Enviar">
                          <a href='javascript:history.back()' class='btn btn-primary'>Volver</a>
                        </div> <!--container-->
                    </form>


<%@include file="includes/footer.jsp"%>