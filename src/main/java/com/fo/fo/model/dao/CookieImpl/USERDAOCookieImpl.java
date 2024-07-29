package com.fo.fo.model.dao.CookieImpl;

import com.fo.fo.model.dao.USERDAO;
import com.fo.fo.model.mo.USER;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;



public class USERDAOCookieImpl implements USERDAO {
    HttpServletRequest request;
    HttpServletResponse response;

    public USERDAOCookieImpl(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    @Override
    public USER create(
            String ID_user,
            String name,
            String surname,
            String email,
            String password,
            String username,
            String admin
    ) {

        USER loggedUser = new USER();
        loggedUser.setID_user(ID_user);
        loggedUser.setname(name);
        loggedUser.setsurname(surname);
        loggedUser.setadmin(admin);

        Cookie cookie;
        cookie = new Cookie("loggedUser", encode(loggedUser));
        cookie.setPath("/");
        response.addCookie(cookie);

        return loggedUser;

    }

    @Override
    public void update(USER loggedUser) {

        Cookie cookie;
        cookie = new Cookie("loggedUser", encode(loggedUser));
        cookie.setPath("/");
        response.addCookie(cookie);

    }

    private String encode(USER loggedUser) {
        String name = loggedUser.getname().replace(" ","%fv");  // sostituisco lo spazio con %fv
        String surname = loggedUser.getsurname().replace(" ","%fv");    // sostituisco lo spazio
        String encodedLoggedUser;
        encodedLoggedUser = loggedUser.getID_user() + "#" + name + "#" + surname + "#" + loggedUser.getadmin();
        return encodedLoggedUser;
    }

    private USER decode(String encodedLoggedUser) {

        USER loggedUser = new USER();

        String[] values = encodedLoggedUser.split("#");
        String nameD = values[1].replace("%fv", " ");   // riporto ad originale
        String surnameD = values[2].replace("%fv", " ");   // riporto ad originale

        loggedUser.setID_user((values[0]));
        loggedUser.setname(nameD);
        loggedUser.setsurname(surnameD);
        loggedUser.setadmin((values[3]));

        return loggedUser;
    }
}
