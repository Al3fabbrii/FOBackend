package com.fo.fo.model.dao;

import com.fo.fo.model.dao.MySQLJDBCImpl.MySQLJDBCDAOFactory;
import com.fo.fo.model.dao.CookieImpl.CookieDAOFactory;
import java.util.Map;

public abstract class DAOFactory {
    // List of DAO types supported by the factory
    public static final String MYSQLJDBCIMPL = "MySQLJDBCImpl";
    public static final String COOKIEIMPL= "CookieImpl";

    public abstract void beginTransaction();
    public abstract void commitTransaction();
    public abstract void rollbackTransaction();
    public abstract void closeTransaction();
    //Indicare per ogni mo creato
    public abstract USERDAO getUSERDAO();
    /*public abstract ProdottoDAO getProdottoDAO();
    public abstract OrderDAO getOrderDAO();
    public abstract CartDAO getCartDAO();
    public abstract ShowcaseDAO getShowcaseDAO();


     */

    public abstract POSTDAO getPOSTDAO();
    public static DAOFactory getDAOFactory(String whichFactory, Map factoryParameters) {

        if (whichFactory.equals(MYSQLJDBCIMPL)) {
            return new MySQLJDBCDAOFactory(factoryParameters);
        } else if (whichFactory.equals(COOKIEIMPL)) {
            return new CookieDAOFactory(factoryParameters);
        } else {
            return null;
        }
    }
}
