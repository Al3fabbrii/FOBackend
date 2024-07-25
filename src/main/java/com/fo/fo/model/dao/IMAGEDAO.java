package com.fo.fo.model.dao;

import com.fo.fo.model.dao.exception.DuplicatedObjectException;
import com.fo.fo.model.mo.IMAGE;

import java.sql.Timestamp;

public interface IMAGEDAO {
    public IMAGE create(
            String ID_image,
            String dimension,
            String extension,
            Long link,
            String name,
            Timestamp date,
            String event)throws DuplicatedObjectException;
    /*method interface*/
}
