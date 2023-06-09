    <%@include file="includes/header.jsp"%>
    <div class="container">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Pilotos</li>
          </ol>
        </nav>
    </div>
    <form action="add-driver" method="post">
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
                <label for="exampleFormControlTextarea1" class="form-label">Numero Piloto: </label>
                <input type="number" id="number" name="number" class="form-control" placeholder="14" >
            </div>
          </div>
          <br>
          <div class="mb-3">
               <div>
                   <label for="exampleFormControlTextarea1" class="form-label">Nacionalidad: </label>
                   <input type="text" id="nationality" name="nationality" class="form-control" placeholder="Espanol" >
               </div>
               <br>
               <!--
               <div class="col">
                   <label for="exampleFormControlTextarea1" class="form-label">Escuderia: </label>
                   <input type="text" id="team" name="team" class="form-control" placeholder="E7" >
               </div>
               -->
               <div class="mb-3">
                <p>Escuderia: </p>
                   <select class="form-select" id="team" name="team">
                     <option selected>Seleccione Escuderia</option>
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
        </div>

    </form>

<%@include file="includes/footer.jsp"%>