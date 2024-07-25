package com.fo.fo.model.dao.MySQLJDBCImpl;

import com.fo.fo.model.dao.USERDAO;
import com.fo.fo.model.dao.exception.DuplicatedObjectException;
import com.fo.fo.model.mo.USER;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class USERDAOMySQLJCBCImpl implements USERDAO {
    Connection conn;

    public USERDAOMySQLJCBCImpl(Connection conn) {
        this.conn = conn;
    }
    @Override
    public USER create(
            String ID_user,
            String name,
            String surname,
            String email,
            String password,
            String username,
            char admin)throws DuplicatedObjectException {
        USER user = new USER();
        return user;
    }
}
