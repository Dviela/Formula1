<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

    <div class="container">

        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Buscar GPs</li>
          </ol>
        </nav>


        <form action="search-gp" method="post">


            <div class="col-md-3">
                <p>Circuito: </p>
                      <select class="form-select" id="circuit" name="circuit">
                        <option selected>Seleccione Circuito: </option>
                        <option value="C1">Bahrein</option>
                        <option value="C2">Yeda</option>
                        <option value="C3">Melbourne</option>
                        <option value="C4">Baku</option>
                        <option value="C5">Miami</option>
                        <option value="C6">Imola</option>
                        <option value="C7">Monaco</option>
                        <option value="C8">Montmelo</option>
                        <option value="C9">Canada</option>
                        <option value="C10">Spielberg</option>
                        <option value="C11">Silverstone</option>
                        <option value="C12">Budapest</option>
                        <option value="C13">Spa</option>
                        <option value="C14">Zandvoort</option>
                        <option value="C15">Monza</option>
                        <option value="C16">Singapur</option>
                        <option value="C17">Suzuka</option>
                        <option value="C18">Qatar</option>
                        <option value="C19">Austin</option>
                        <option value="C20">Mexico</option>
                        <option value="C21">Brasil</option>
                        <option value="C22">Las Vegas</option>
                        <option value="C23">Abu Dhabi</option>
                      </select>
            </div><!--col-->
            <br>
              <div class="col">
                <label for="fecha">Fecha de Carrera:</label>
                <input type="date" id="date" name="date" required>
              </div><!--col-->
          <br>
          <input class="btn btn-danger" type="submit" value="Buscar">
          <a href='javascript:history.back()' class='btn btn-primary'>Volver</a>

        </form>
    </div>

<%@include file="includes/footer.jsp"%>