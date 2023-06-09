package com.svalero.dao;

import com.svalero.domain.GP;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import org.jdbi.v3.sqlobject.statement.UseRowMapper;

import java.sql.Date;
import java.util.List;

public interface GPDAO {
    //Listado de GPs
    @SqlQuery("SELECT * FROM GP")
    @UseRowMapper(GPMapper.class)
    List<GP> getGP();

    //Busqueda GPs por ID
    @SqlQuery("SELECT * FROM GP WHERE ID_GP = ?")
    @UseRowMapper(GPMapper.class)
    GP getGP(String id);

    //Insertar nuevo GP
    @SqlUpdate("INSERT INTO GP (ID_GP, FECHA, ID_CIRCUITO, ID_GANADOR ) VALUES (?, ?, ?, ?)")
    void addGP(String id, Date date, String circuit, String winner);

    //Borrar GP
    @SqlUpdate("DELETE FROM GP WHERE ID_GP = ?")
    void removeGP(String id);

    //Modificar GPs
    @SqlUpdate("UPDATE GP SET FECHA = ?, ID_CIRCUITO = ?, ID_GANADOR = ? WHERE ID_GP = ?")
    void editGP(Date date, String circuit, String winner, String id);

}

