package com.fo.fo.model.dao.MySQLJDBCImpl;

import com.fo.fo.model.dao.POSTDAO;
import com.fo.fo.model.dao.exception.DuplicatedObjectException;
import com.fo.fo.model.mo.POST;

import java.sql.*;

public class POSTDAOMySQLJDBCImpl implements POSTDAO {
    Connection conn;

    public POSTDAOMySQLJDBCImpl(Connection conn) {
        this.conn = conn;
    }
    @Override
    public POST create(
            String ID_post,
            String name,
            String location,
            String title,
            String description)throws DuplicatedObjectException {

        PreparedStatement ps;
        POST post = new POST();
        post.setname(name);
        post.setlocation(location);
        post.settitle(title);
        post.setdescription(description);

        try {
            //controllo se nome del post esiste già in una tupla
            String sql
                    = " SELECT * "
                    + " FROM POST "
                    + " WHERE "
                    + " name = ?";

            ps = conn.prepareStatement(sql);
            int i = 1;
            ps.setString(i++, post.getname());

            ResultSet resultSet = ps.executeQuery();

            boolean exist;
            boolean delete = true;

            exist = resultSet.next();
            //se esiste
            if (exist) {
                delete = resultSet.getString("name").equals(post.getname());
            }

            resultSet.close();
            if(exist && delete) {
                throw new DuplicatedObjectException("UserDAOJDBCImpl.create: Tentativo di inserimento di un nome evento già esistente.");
            }
            else {
                sql
                        = " INSERT INTO POST "
                        + "     (name,"
                        + "     location,"
                        + "     title,"
                        + "     description "
                        + "   ) "
                        + " VALUES (?,?,?,?)";

                ps = conn.prepareStatement(sql);
                i = 1;
                ps.setString(i++, post.getname());
                ps.setString(i++, post.getlocation());
                ps.setString(i++, post.gettitle());
                ps.setString(i++, post.getdescription());

                ps.executeUpdate();

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return post;
    }
    POST read(ResultSet rs) {

        POST post = new POST();
        try {
            post.setID_post(rs.getString("ID_post"));
        } catch (SQLException sqle) {
        }
        try {
            post.setname(rs.getString("name"));
        } catch (SQLException sqle) {
        }
        try {
            post.setlocation(rs.getString("location"));
        } catch (SQLException sqle) {
        }
        try {
            post.settitle(rs.getString("title"));
        } catch (SQLException sqle) {
        }
        try {
            post.setdescription(rs.getString("description"));
        } catch (SQLException sqle) {
        }

        return post;
    }
}