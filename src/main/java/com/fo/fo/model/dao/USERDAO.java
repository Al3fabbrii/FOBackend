package com.fo.fo.model.dao;

import com.fo.fo.model.dao.exception.DuplicatedObjectException;
import com.fo.fo.model.mo.USER;

public interface USERDAO {
    public USER create(
            String ID_user,
            String name,
            String surname,
            String email,
            String password,
            String username,
            char admin)throws DuplicatedObjectException;
    /*method interface*/
}
