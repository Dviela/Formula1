
<%@include file="includes/header.jsp"%>

<br>
  <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-3">
            <img src="../f1_data/nuevo_piloto.png" class="bd-placeholder-img rounded-circle"/>
            <h2 class="fw-normal">Nuevo Piloto</h2>
            <p>Rellene el formulario para insertar un nuevo piloto a la Base de Datos.</p>
            <p><a href="add-driver.jsp" class="btn btn-success">Registrar Piloto</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-3">
            <img src="../f1_data/nuevo_circuito.png" class="bd-placeholder-img rounded-circle"/>
            <h2 class="fw-normal">Nuevo GP</h2>
            <p>Rellene el formulario para registrar los datos del ultimo Gran Premio.</p>
            <p><a href="add-gp.jsp" class="btn btn-success">Registrar Gran Premio</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-3">
            <img src="../f1_data/lista_pilotos.png" class="bd-placeholder-img rounded-circle"/>
            <h2 class="fw-normal">Pilotos</h2>
            <p>Consulte la lista de todos los pilotos registrados. Edita o Elimina los Pilotos</p>
            <p><a href="list-driver.jsp" class="btn btn-danger">Ver Pilotos</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-3">
          <img src="../f1_data/lista_gp.png" class="bd-placeholder-img rounded-circle"/>
          <h2 class="fw-normal">Grandes Premios</h2>
          <p>Consulte la lista de todos los GPs registrados. Edita o Elimina los GPs</p>
          <p><a href="list-gp.jsp" class="btn btn-danger">Ver GPs</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
  </div><!-- /.container marketing -->
  <hr class="featurette-divider">


<%@include file="includes/footer.jsp"%>
