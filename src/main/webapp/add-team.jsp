<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

<script>
  function showAlert() {
    alert("Escudería registrada correctamente");
  }
</script>
<div class="container">
    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
        <li class="breadcrumb-item"><a href="list-driver.jsp">Escuderias</a></li>
        <li class="breadcrumb-item active" aria-current="page">Registrar Escuderia</li>
      </ol>
    </nav>
</div>
<form action="add-team" method="post" onsubmit="showAlert()">
    <div class="container">
      <div class="row">
        <div class="col">
           <label for="exampleFormControlTextarea1" class="form-label">ID Escudería: </label>
           <input type="text" id="id" name="id" class="form-control" placeholder="E1" >
        </div>
        <div class="col">
            <label for="exampleFormControlTextarea1" class="form-label">Nombre: </label>
            <input type="text" id="name" name="name" class="form-control" placeholder="Aston Martin" >
        </div>

      </div>
      <br>

      <div class="col-md-6">
           <div>
               <label for="exampleFormControlTextarea1" class="form-label">Pais: </label>
               <input type="text" id="country" name="country" class="form-control" placeholder="Reino Unido" >
           </div>
       <br>
      <div class="col-md-6">
        <label for="exampleFormControlTextarea1" class="form-label">Fabricante Motor: </label>
        <input type="text" id="engine" name="engine" class="form-control" placeholder="Mercedes" >
      </div>
      </div>
      <br>
      <input class="btn btn-danger" type="submit" value="Enviar">
      <a href='javascript:history.back()' class='btn btn-primary'>Volver</a>
    </div> <!--container-->
</form>

<%@include file="includes/footer.jsp"%>
