<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

<script>
  function showAlert() {
    alert("Piloto registrado correctamente");
  }
</script>
<div class="container">
    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
        <li class="breadcrumb-item"><a href="list-driver.jsp">Pilotos</a></li>
        <li class="breadcrumb-item active" aria-current="page">Registrar Piloto</li>
      </ol>
    </nav>
</div>
<form action="add-driver" method="post" enctype="multipart/form-data" onsubmit="showAlert()">
    <div class="container">
      <div class="row">
        <div class="col">
           <label for="exampleFormControlTextarea1" class="form-label">ID Piloto: </label>
           <input type="text" id="id" name="id" class="form-control" placeholder="P14" >
        </div>
        <div class="col">
            <label for="exampleFormControlTextarea1" class="form-label">Nombre: </label>
            <input type="text" id="name" name="name" class="form-control" placeholder="Fernando Alonso" >
        </div>
        <div class="col">
            <label for="exampleFormControlTextarea1" class="form-label">Nº Piloto: </label>
            <input type="number" id="number" name="number" class="form-control" placeholder="14" >
        </div>
      </div>
      <br>

      <div class="col-md-6">
           <div>
               <label for="exampleFormControlTextarea1" class="form-label">Nacionalidad: </label>
               <input type="text" id="nationality" name="nationality" class="form-control" placeholder="Espanol" >
           </div>
           <br>
      <div class="col-md-6">
        <label for="image" class="form-label">Foto</label>
        <input type="file" class="form-control" id="image" name="image">
      </div>
      <br>
           <div class="col-md-6">
            <p>Escudería: </p>
               <select class="form-select" id="team" name="team">
                 <option selected>Seleccione Escudería</option>
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
      <input class="btn btn-danger" type="submit" value="Enviar">
      <a href='javascript:history.back()' class='btn btn-primary'>Volver</a>
    </div> <!--container-->
</form>

<%@include file="includes/footer.jsp"%>
