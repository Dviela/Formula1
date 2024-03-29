package com.svalero.dao;

import com.svalero.domain.Driver;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import org.jdbi.v3.sqlobject.statement.UseRowMapper;

import java.util.List;

public interface DriverDAO {

    //Listado de Pilotos
    @SqlQuery("SELECT * FROM PILOTOS")
    @UseRowMapper(DriverMapper.class)
    List<Driver> getDriver();
    //Get Piloto
    @SqlQuery("SELECT * FROM PILOTOS WHERE ID_PILOTO = ?")
    @UseRowMapper(DriverMapper.class)
    Driver getDrivers(String id);

    //Busqueda Piloto por ID
    @SqlQuery("SELECT * FROM PILOTOS WHERE NACIONALIDAD = ? AND ID_ESCUDERIA = ?")
    @UseRowMapper(DriverMapper.class)
    List<Driver> searchDriver(String nationality, String team);

    //Insertar nuevo Piloto
    @SqlUpdate("INSERT INTO PILOTOS (ID_PILOTO, ID_ESCUDERIA, NOMBRE_PILOTO, NACIONALIDAD, NUMERO, FOTO ) VALUES (?, ?, ?, ?, ?, ?)")
    void addDriver(String id, String team, String name, String nationality, int number, String image);

    //Borrar Piloto
    @SqlUpdate("DELETE FROM PILOTOS WHERE ID_PILOTO = ?")
    void removeDriver(String id);

    //Modificar Pilotos
    @SqlUpdate("UPDATE PILOTOS SET ID_ESCUDERIA = ?, NOMBRE_PILOTO = ?, NACIONALIDAD = ?, NUMERO = ?, FOTO = ? WHERE ID_PILOTO = ?")
    void editDriver(String team, String name, String nationality, int number, String image, String id);


}
