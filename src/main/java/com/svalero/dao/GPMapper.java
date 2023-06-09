package com.svalero.dao;

import com.svalero.domain.GP;
import com.svalero.util.DateUtils;
import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GPMapper implements RowMapper<GP> {
    @Override
    public GP map(ResultSet rs, StatementContext ctx) throws SQLException {
        return new GP(rs.getString("ID_GP"),
                rs.getString("ID_CIRCUITO"),
                rs.getString("ID_GANADOR"),
                DateUtils.getLocalDate(rs.getDate("FECHA"))

        );
    }
}
