package com.fo.fo.model.dao;

import com.fo.fo.model.dao.exception.DuplicatedObjectException;
import com.fo.fo.model.mo.USER;

import java.util.List;

public interface USERDAO {
    public USER create(
            String ID_user,
            String name,
            String surname,
            String email,
            String password,
            String username,
            String admin,
            String deleted)throws DuplicatedObjectException;
    /*method interface*/
    public void update(USER user)throws DuplicatedObjectException;
    public void delete(USER user);
    public USER findLoggedUser();
    public USER findByUsername(String username);
}
