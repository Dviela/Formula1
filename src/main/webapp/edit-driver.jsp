<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

    <script>
    function showAlert() {
    alert("Los valores del piloto han sido modificados");
    }
    </script>

    <script>
      function confirmModify() {
          return confirm("¿Seguro que desea modificar los datos de este piloto?");
    }
    </script>


<%
    String id = request.getParameter("id");
    if (id == null) id = "";
    String name = request.getParameter("name");
    if (name == null) name = "";
    String number = request.getParameter("number");
    if (number == null) number = "";
    String nationality = request.getParameter("nationality");
    if (nationality == null) nationality = "";
    String team = request.getParameter("team");
    if (team == null) team = "";
%>

<div class="container">
    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
        <li class="breadcrumb-item"><a href="list-driver.jsp">Pilotos</a></li>
        <li class="breadcrumb-item active" aria-current="page">Editar Piloto</li>
      </ol>
    </nav>
</div>

<form action="edit-driver" method="post" enctype="multipart/form-data" onsubmit="showAlert()">
    <div class="container">
      <div class="row">
        <div class="col">
           <label for="exampleFormControlTextarea1" class="form-label">ID Piloto: </label>
           <input type="text" id="id" name="id" class="form-control" value='<%= id %>'>
        </div>
        <div class="col">
            <label for="exampleFormControlTextarea1" class="form-label">Nombre: </label>
            <input type="text" id="name" name="name" class="form-control" value='<%= name %>'>
        </div>
        <div class="col">
            <label for="exampleFormControlTextarea1" class="form-label">Numero Piloto: </label>
            <input type="number" id="number" name="number" class="form-control" value='<%= number %>'>
        </div>
      </div>
      <br>

      <div class="col-md-6">
           <div>
               <label for="exampleFormControlTextarea1" class="form-label">Nacionalidad: </label>
               <input type="text" id="nationality" name="nationality" class="form-control" value='<%= nationality %>'>
           </div>
           <br>
      <div class="col-md-6">
        <label for="image" class="form-label">Foto</label>
        <input type="file" class="form-control" id="image" name="image">
      </div>
      <br>
           <div class="col-md-6">
            <p>Escuderia: </p>
               <select class="form-select" id="team" name="team" >
                 <option selected> <%= team %> </option>
                 <option value="E1">Mercedes</option>
                 <option value="E2">Red Bull Racing</option>
                 <option value="E3">Ferrari</option>
                 <option value="E4">McLaren</option>
                 <option value="E5">Alpine Racing</option>
                 <option value="E6">AlphaTauri</option>
                 <option value="E7">Aston Martin</option>
                 <option value="E8">Alpha Romeo Racing</option>
                 <option value="E9">Haas</option>
                 <option value="E10">Williams</option>
               </select>
           </div>
       </div>

      <br>
      <input class="btn btn-danger" type="submit" value="Modificar" onclick="return confirmModify()">
      <a class="btn btn-secondary" href="list-driver.jsp" role="button">Volver</a>

    </div> <!--container-->
</form>

<%@include file="includes/footer.jsp"%>
