<%@include file="includes/header.jsp"%>
<%@ page pageEncoding="UTF-8" %>

    <script>
      function showAlert() {
        alert("Gran Premio registrado correctamente");
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
        String circuit = request.getParameter("circuit");
        if (circuit == null) circuit = "";
        String winner = request.getParameter("winner");
        if (winner == null) winner = "";
        String date = request.getParameter("date");
        if (date == null) date = "";
    %>

    <div class="container">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
            <li class="breadcrumb-item"><a href="list-gp.jsp">Grandes Premios</a></li>
            <li class="breadcrumb-item active" aria-current="page">Editar GP</li>
          </ol>
        </nav>

            <form action="edit-gp" method="post" onsubmit="showAlert()">
                    <div class="col-md-6">
                        <label for="exampleFormControlTextarea1" class="form-label">Id del Gran Premio</label>
                        <input type="text" id="id" name="id" class="form-control" value='<%= id %>'>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p>Circuito: </p>
                                  <select class="form-select" id="circuit" name="circuit">
                                    <option selected><%= circuit %> </option>
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
                         </div>
                      <div class="col">

                          <p>Piloto Ganador: </p>
                          <select class="form-select" id="winner" name="winner">
                            <option selected> <%= winner %> </option>
                            <option value="P1">HAMILTON</option>
                            <option value="P2">RUSELL</option>
                            <option value="P3">VERSTAPPEN</option>
                            <option value="P4">S.PEREZ</option>
                            <option value="P5">C.SAINZ</option>
                            <option value="P6">LECLERC</option>
                            <option value="P7">PIASTRI</option>
                            <option value="P8">NORRIS</option>
                            <option value="P9">OCON</option>
                            <option value="P10">GASLY</option>
                            <option value="P11">VRIES</option>
                            <option value="P12">TSUNODA</option>
                            <option value="P13">STROLL</option>
                            <option value="P14">ALONSO</option>
                            <option value="P15">BOTTAS</option>
                            <option value="P16">ZHOU</option>
                            <option value="P17">HULKENBERG</option>
                            <option value="P18">MAGNUSSEN</option>
                            <option value="P19">ALBON</option>
                            <option value="P20">SARGEANT</option>
                          </select>

                      </div>

                    </div>
                    <br>
              <div class="mb-3">
                <label for="fecha">Fecha de Carrera:</label>
                      <input type="date" id="date" name="date" value='<%= date %>' required>
              </div>
              <br>

              <input class="btn btn-danger" type="submit" value="Modificar" onclick="return confirmModify()">
              <a class="btn btn-secondary" href="list-gp.jsp" role="button">Volver</a>
              <br>
            </form>
    </div>

<%@include file="includes/footer.jsp"%>