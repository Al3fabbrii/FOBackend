package com.fo.fo.model.dao.MySQLJDBCImpl;

import com.fo.fo.model.dao.IMAGEDAO;
import com.fo.fo.model.dao.exception.DuplicatedObjectException;
import com.fo.fo.model.mo.IMAGE;

import java.sql.Connection;
import java.sql.Timestamp;

public class IMAGEDAOMySQLJDBCImpl implements IMAGEDAO {
    Connection conn;

    public IMAGEDAOMySQLJDBCImpl(Connection conn) {
        this.conn = conn;
    }
    @Override
    public IMAGE create(
            String ID_image,
            String dimension,
            String extension,
            Long link,
            String name,
            Timestamp date,
            String event)throws DuplicatedObjectException {
        IMAGE image = new IMAGE();
        return image;
    }
}
