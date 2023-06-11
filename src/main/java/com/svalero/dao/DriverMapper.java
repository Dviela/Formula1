package com.svalero.dao;

import com.svalero.domain.Driver;
import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DriverMapper implements RowMapper<Driver> {
    @Override
    public Driver map(ResultSet rs, StatementContext ctx) throws SQLException {
        return new Driver(rs.getString("ID_PILOTO"),
                rs.getString("ID_ESCUDERIA"),
                rs.getString("NOMBRE_PILOTO"),
                rs.getString("NACIONALIDAD"),
                rs.getInt("NUMERO"),
                rs.getString("FOTO"));
    }
}
