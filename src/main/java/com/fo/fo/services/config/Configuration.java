package com.fo.fo.services.config;

import java.util.Calendar;
import java.util.logging.Level;
import com.fo.fo.model.dao.DAOFactory;

public class Configuration {
    /* Database Configuration */
    public static final String DAO_IMPL=DAOFactory.MYSQLJDBCIMPL;
    public static final String DATABASE_DRIVER="com.mysql.cj.jdbc.Driver";
    public static final String SERVER_TIMEZONE= Calendar.getInstance().getTimeZone().getID();
    public static final String
            DATABASE_URL="jdbc:mysql://localhost/FO?user=root&password=Gastarbeiter23&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone="+SERVER_TIMEZONE;

    /* Session Configuration */
    public static final String COOKIE_IMPL=DAOFactory.COOKIEIMPL;

    /* Logger Configuration */
    public static final String GLOBAL_LOGGER_NAME="Fo";
    public static final String GLOBAL_LOGGER_FILE="/home/alessandro/log.txt";
    public static final Level GLOBAL_LOGGER_LEVEL=Level.ALL;
}
