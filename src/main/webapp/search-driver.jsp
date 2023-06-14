<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

<!--
<script type="text/javascript">
    $(document).ready(function() {
        $("form").on("submit", function(event) {
            event.preventDefault();
            var formValue = $(this).serialize();
            $.post("search-driver", formValue, function(data) {
                $("#result").html(data);
            });
        });
    });
</script>
-->

    <div class="container">

        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Buscar Piloto</li>
          </ol>
        </nav>


        <form action="search-driver" method="post">

            <div class="container">

                   <!-- <div class="col-md-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Nombre: </label>
                        <input type="text" id="name" name="name" class="form-control" placeholder="Fernando Alonso" >
                    </div>
                     <br>

                      <div class="col-md-3">
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
                    -->
                    <div class="col-md-6">
                               <div>
                                   <label for="exampleFormControlTextarea1" class="form-label">Nacionalidad: </label>
                                   <input type="text" id="nationality" name="nationality" class="form-control" placeholder="Espanol" >
                               </div>
                  <br>
                  <input class="btn btn-danger" type="submit" value="Buscar">

            </div> <!--container-->

        </form>
    </div>

<%@include file="includes/footer.jsp"%>