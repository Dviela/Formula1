package com.svalero.dao;

import com.svalero.domain.Team;
import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TeamMapper implements RowMapper<Team> {
    @Override
    public Team map(ResultSet rs, StatementContext ctx) throws SQLException {
        return new Team(rs.getString("ID_ESCUDERIA"),
                rs.getString("NOMBRE_ESCUDERIA"),
                rs.getString("PAIS"),
                rs.getString("MOTOR"));
    }
}
