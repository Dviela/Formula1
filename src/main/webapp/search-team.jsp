<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

    <div class="container">

        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Buscar Escuderías</li>
          </ol>
        </nav>


        <form action="search-team" method="post">
            <div class="col-md-6">
                <label for="exampleFormControlTextarea1" class="form-label">Fabricante Motor: </label>
                <input type="text" id="engine" name="engine" class="form-control" placeholder="Mercedes" >
            </div>

          <br>
          <input class="btn btn-danger" type="submit" value="Buscar">
          <a href='javascript:history.back()' class='btn btn-primary'>Volver</a>

        </form>
    </div>

<%@include file="includes/footer.jsp"%>