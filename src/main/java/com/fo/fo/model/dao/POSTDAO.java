package com.fo.fo.model.dao;

import com.fo.fo.model.dao.exception.DuplicatedObjectException;
import com.fo.fo.model.mo.POST;

public interface POSTDAO {
    public POST create(
            String ID_post,
            String name,
            String location,
            String title,
            String description)throws DuplicatedObjectException;
    /*method interface*/
}