
<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>
<br>
<section class="py-1 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">Formula1</h1>
        <p class="lead text-muted">Programa de Gestión para mundial de F1 2023</p>
      </div>
    </div>
    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="../f1_data/slide1.jpg" class="img-fluid" alt="slide1">
        </div>
        <div class="carousel-item">
          <img src="../f1_data/slide2.jpg" class="img-fluid" alt="slide2">
        </div>
        <div class="carousel-item">
          <img src="../f1_data/slide3.jpg" class="img-fluid" alt="slide3">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </section>

  <hr class="featurette-divider">
<br>

  <div class="py-1 text-center container">

      <div class="row">
        <div class="col-lg-4">
            <img src="../f1_data/nuevo_piloto.png" class="bd-placeholder-img rounded-circle"/>
            <h2 class="fw-normal">Nuevo Piloto</h2>
            <p>Rellene el formulario para añadir un nuevo piloto a la Base de Datos.</p>
            <p><a href="add-driver.jsp?action=register" class="btn btn-success">Añadir Piloto</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img src="../f1_data/nuevo_circuito.png" class="bd-placeholder-img rounded-circle"/>
            <h2 class="fw-normal">Nuevo GP</h2>
            <p>Rellene el formulario para registrar los datos del último Gran Premio.</p>
            <p><a href="add-gp.jsp?action=register" class="btn btn-success">Añadir Gran Premio</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="../f1_data/nueva_escuderia.png" class="bd-placeholder-img rounded-circle"/>
          <h2 class="fw-normal">Nueva Escudería</h2>
          <p>Rellene el formulario para añadir una nueva escudería a la Base de Datos..</p>
          <p><a href="add-team.jsp" class="btn btn-success">Añadir Escudería</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
    <hr class="featurette-divider">

      <div class="row">
              <div class="col-lg-4">
                  <img src="../f1_data/buscar_piloto.png" class="bd-placeholder-img rounded-circle"/>
                  <h2 class="fw-normal">Busqueda de Pilotos</h2>
                  <p>Buqueda por nacionalidad y escudería.</p>
                  <p><a href="search-driver.jsp" class="btn btn-primary">Buscar Piloto</a></p>
              </div><!-- /.col-lg-4 -->
              <div class="col-lg-4">
                  <img src="../f1_data/buscar_circuito.png" class="bd-placeholder-img rounded-circle"/>
                  <h2 class="fw-normal">Busqueda de GP</h2>
                  <p>Buqueda por nombre del circuito y fecha.</p>
                  <p><a href="search-gp.jsp" class="btn btn-primary">Buscar GP</a></p>
              </div><!-- /.col-lg-4 -->
              <div class="col-lg-4">
                <img src="../f1_data/buscar_escuderia.png" class="bd-placeholder-img rounded-circle"/>
                <h2 class="fw-normal">Busqueda Escudería</h2>
                <p>Buqueda según el fabricante de motor.</p>
                <p><a href="search-team.jsp" class="btn btn-primary">Buscar Escudería</a></p>
              </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
      <div class="row">
    <hr class="featurette-divider">

        <div class="col-lg-4">
             <img src="../f1_data/lista_pilotos.png" class="bd-placeholder-img rounded-circle"/>
             <h2 class="fw-normal">Pilotos</h2>
             <p>Consulte la lista de todos los pilotos registrados. Edita o Elimina los Pilotos</p>
             <p><a href="list-driver.jsp" class="btn btn-danger">Ver Pilotos</a></p>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4">
          <img src="../f1_data/lista_gp.png" class="bd-placeholder-img rounded-circle"/>
          <h2 class="fw-normal">Grandes Premios</h2>
          <p>Consulte la lista de todos los GPs registrados. Edita o Elimina los GPs</p>
          <p><a href="list-gp.jsp" class="btn btn-danger">Ver GPs</a></p>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4">
          <img src="../f1_data/lista_escuderias.png" class="bd-placeholder-img rounded-circle"/>
          <h2 class="fw-normal">Escuderías</h2>
          <p>Consulte la lista de todos los equipos registrados. Edita o Elimina las Escuderías.</p>
          <p><a href="list-team.jsp" class="btn btn-danger">Ver Escuderías</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
  </div><!-- /.container marketing -->



<%@include file="includes/footer.jsp"%>

