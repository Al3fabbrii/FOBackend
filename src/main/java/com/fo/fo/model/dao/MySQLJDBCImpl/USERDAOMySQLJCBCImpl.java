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
            String admin,
            String deleted)throws DuplicatedObjectException {

        PreparedStatement ps;
        USER user = new USER();
        user.setusername(username);
        user.setpassword(password);
        user.setemail(email);
        user.setname(name);
        user.setsurname(surname);

        try {
            //controllo se USERNAME esiste già in una tupla
            String sql
                    = " SELECT * "
                    + " FROM USER "
                    + " WHERE "
                    + " username = ?";

            ps = conn.prepareStatement(sql);
            int i = 1;
            ps.setString(i++, user.getusername());

            ResultSet resultSet = ps.executeQuery();

            boolean exist;
            boolean delete = true;

            exist = resultSet.next();
            //se esiste
            if (exist) {
                delete = resultSet.getString("username").equals(user.getusername());
            }

            resultSet.close();
            if(exist && delete) {
                throw new DuplicatedObjectException("UserDAOJDBCImpl.create: Tentativo di inserimento di un username già esistente.");
            }
            else {
                sql
                        = " INSERT INTO USER "
                        + "     (name,"
                        + "     surname,"
                        + "     email,"
                        + "     password,"
                        + "     username,"
                        + "     admin,"
                        + "     deleted,"
                        + "   ) "
                        + " VALUES (?,?,?,?,?,'N','N')";

                ps = conn.prepareStatement(sql);
                i = 1;
                ps.setString(i++, user.getname());
                ps.setString(i++, user.getsurname());
                ps.setString(i++, user.getemail());
                ps.setString(i++, user.getpassword());
                ps.setString(i++, user.getusername());

                ps.executeUpdate();

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

    @Override
    public void update(USER user) throws DuplicatedObjectException {

        PreparedStatement ps;
        String sql;
        try {
            // controllo solo sull'username, il resto non mi interessa
            // controllo se l'username (modificato) è già presente in una tupla
            sql
                    = " SELECT COUNT(*)username "
                    + " FROM USER "
                    + " WHERE "
                    + " ID_user != ? AND "
                    + " username = ?";

            ps = conn.prepareStatement(sql);
            int i = 1;
            ps.setString(i++, user.getID_user());
            ps.setString(i++, user.getusername());

            ResultSet resultSet = ps.executeQuery();
            int count = 0;

            if(resultSet.next()){
                count = resultSet.getInt(1);
            }

            resultSet.close();
            if(count != 0) {
                throw new DuplicatedObjectException("UtenteDAOJDBCImpl.create: Tentativo di inserimento di un username già esistente.");
            }
            else {
                //se non esiste prosegui con modifica
                sql
                        = " UPDATE USER "
                        + " SET "
                        + " name = ? , "
                        + " surname = ? , "
                        + " email = ? ,"
                        + " password = ? ,"
                        + " username = ? , "
                        + " admin = ? ,"
                        + " deleted = ? "
                        + " WHERE "
                        + " ID_user = ?";

                ps = conn.prepareStatement(sql);
                i = 1;
                ps.setString(i++, user.getname());
                ps.setString(i++, user.getusername());
                ps.setString(i++, user.getemail());
                ps.setString(i++, user.getpassword());
                ps.setString(i++, user.getusername());
                ps.setString(i++, user.getadmin());
                ps.setString(i++, user.getdeleted());

                ps.executeUpdate();

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    @Override
    public void delete(USER user) {

        PreparedStatement ps;

        try {

            String sql
                    = " UPDATE USER "
                    + " SET deleted='Y' "
                    + " WHERE "
                    + " ID_user=?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, user.getID_user());
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    @Override
    public USER findLoggedUser() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    @Override
    public USER findByUsername(String username) {

        PreparedStatement ps;
        USER user = null;

        try {

            String sql
                    = " SELECT * "
                    + "   FROM USER "
                    + " WHERE "
                    + "   username = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);

            ResultSet resultSet = ps.executeQuery();

            if (resultSet.next()) {
                user = read(resultSet);
            }
            resultSet.close();
            ps.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return user;

    }
    USER read(ResultSet rs) {

        USER user = new USER();
        try {
            user.setID_user(rs.getString("ID_user"));
        } catch (SQLException sqle) {
        }
        try {
            user.setname(rs.getString("name"));
        } catch (SQLException sqle) {
        }
        try {
            user.setsurname(rs.getString("surname"));
        } catch (SQLException sqle) {
        }
        try {
            user.setemail(rs.getString("email"));
        } catch (SQLException sqle) {
        }
        try {
            user.setpassword(rs.getString("password"));
        } catch (SQLException sqle) {
        }
        try {
            user.setusername(rs.getString("username"));
        } catch (SQLException sqle) {
        }
        try {
            user.setadmin(rs.getString("admin"));
        } catch (SQLException sqle) {
        }
        try {
            user.setdeleted(rs.getString("deleted"));
        } catch (SQLException sqle) {
        }

        return user;
    }
}
