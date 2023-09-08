package com.svalero.dao;


import com.svalero.domain.Team;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import org.jdbi.v3.sqlobject.statement.UseRowMapper;
import java.util.List;

public interface TeamDAO {

    //Listado de Escuderías
    @SqlQuery("SELECT * FROM ESCUDERIAS")
    @UseRowMapper(TeamMapper.class)
    List<Team> getTeams();

    //Insertar nueva ESCUDERIA
    @SqlUpdate("INSERT INTO ESCUDERIAS (ID_ESCUDERIA, NOMBRE_ESCUDERIA, PAIS, MOTOR) VALUES (?, ?, ?, ?)")
    void addTeam(String id, String name, String country, String engine);

    //Borrar ESCUDERIA
    @SqlUpdate("DELETE FROM ESCUDERIAS WHERE ID_ESCUDERIA = ?")
    void removeTeam(String id);

    //Busqueda ESCUDERIAS por motor
    @SqlQuery("SELECT * FROM ESCUDERIAS WHERE MOTOR = ?")
    @UseRowMapper(TeamMapper.class)
    List<Team> searchTeam(String engine);

    //Get Escudería
    @SqlQuery("SELECT * FROM ESCUDERIAS WHERE ID_ESCUDERIA = ?")
    @UseRowMapper(TeamMapper.class)
    Team getTeam(String id);

    //Modificar ESCUDERIAS
    @SqlUpdate("UPDATE ESCUDERIAS SET NOMBRE_ESCUDERIA = ?, PAIS = ?, MOTOR = ? WHERE ID_ESCUDERIA = ?")
    void editTeam(String name, String country, String engine, String id);

    //Nombre a traves de ID
    @SqlQuery("SELECT NOMBRE_ESCUDERIA FROM ESCUDERIAS WHERE ID_ESCUDERIA = ?")
    @UseRowMapper(TeamMapper.class)
    String getTeamNameById(String name);

}
