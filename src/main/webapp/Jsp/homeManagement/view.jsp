<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.fo.fo.model.mo.USER" %>
<%@ page import="com.fo.fo.services.logservice.LogService" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 26/07/2024
  Time: 09:40
  To change this template use File | Settings | File Templates.
--%>
<%
    boolean loggedOn = (Boolean) request.getAttribute("loggedOn");
    USER loggedUser = (USER) request.getAttribute("loggedUser");
    String applicationMessage = (String) request.getAttribute("applicationMessage");
    String menuActiveLink = "Home";
%>
<!DOCTYPE html>
<html>
<style>
    .desktop {
        background-color: #ffffff;
        display: flex;
        flex-direction: row;
        justify-content: center;
        width: 100%;
    }

    .desktop .overlap-group-wrapper {
        background-color: #ffffff;
        width: 1440px;
        height: 1024px;
    }

    .desktop .overlap-group {
        position: relative;
        height: 1024px;
    }

    .desktop .frame {
        flex-direction: column;
        width: 1440px;
        height: 1024px;
        padding: 10px;
        top: 0;
        left: 0;
        backdrop-filter: blur(4px) brightness(100%);
        -webkit-backdrop-filter: blur(4px) brightness(100%);
        display: flex;
        align-items: center;
        gap: 10px;
        position: absolute;
    }

    .desktop .concerto-musicale {
        position: relative;
        align-self: stretch;
        width: 100%;
        height: 535px;
        margin-top: -5px;
        margin-left: -5px;
        margin-right: -5px;
        object-fit: cover;
        border-radius: 15px;
        border: 5px solid;
        border-color: #336699;
        background-image: url("https://unsplash.com/it/foto/gruppo-di-persone-davanti-al-palco-ZhQCZjr9fHo");
    }

    .desktop .rectangle {
        position: absolute;
        width: 507px;
        height: 184px;
        top: 560px;
        left: 442px;
        background-color: #33669999;
        border-radius: 30px;
        border: 2px solid;
        border-color: #000000;
    }

    .desktop .div-wrapper {
        width: 507px;
        justify-content: center;
        padding: 10px;
        top: 597px;
        left: 442px;
        display: flex;
        align-items: center;
        gap: 10px;
        position: absolute;
    }

    .desktop .text-wrapper {
        position: relative;
        width: 507px;
        margin-top: -1px;
        margin-left: -10px;
        margin-right: -10px;
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: #ffffff;
        font-size: 45px;
        text-align: center;
        letter-spacing: 0;
        line-height: 45px;
    }

    .desktop .group {
        position: absolute;
        width: 66px;
        height: 66px;
        top: 26px;
        left: 1338px;
    }

    .desktop .account {
        position: relative;
        width: 64px;
        height: 64px;
        top: 1px;
        left: 1px;
        object-fit: cover;
        backdrop-filter: brightness(100%);
        background-color: white;
        border-radius: 100px;
        border: 3px solid;
        border-color: #000000;
    }

    .desktop .benvenuto-your-name-wrapper {
        width: 950px;
        height: 525px;
        justify-content: center;
        padding: 39px 10px 10px;
        top: 10px;
        left: 245px;
        display: flex;
        align-items: center;
        gap: 10px;
        position: absolute;
    }

    .desktop .benvenuto-your-name {
        position: relative;
        width: fit-content;
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: #ffffff;
        font-size: 64px;
        text-align: center;
        letter-spacing: 0;
        line-height: 24px;
    }

    .desktop .button {
        all: unset;
        box-sizing: border-box;
        display: flex;
        width: 357px;
        height: 94px;
        align-items: center;
        justify-content: center;
        gap: var(--size-space-200);
        padding: var(--size-space-200);
        position: absolute;
        top: 817px;
        left: 85px;
        background-color: #336699;
        border-radius: var(--size-radius-200);
        overflow: hidden;
        border: 1px solid;
        border-color: #000000;
    }

    .desktop .upload {
        position: relative;
        width: 16px;
        height: 16px;
    }

    .desktop .add {
        all: unset;
        box-sizing: border-box;
        position: absolute;
        width: fit-content;
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: white;
        font-size: 20px;
        letter-spacing: 0;
        line-height: 20px;
        white-space: nowrap;
    }

    .desktop .button-2 {
        display: flex;
        width: 390px;
        height: 94px;
        align-items: center;
        justify-content: center;
        gap: var(--size-space-200);
        padding: var(--size-space-200);
        position: absolute;
        top: 817px;
        left: 949px;
        background-color: #336699;
        border-radius: var(--size-radius-200);
        overflow: hidden;
        border: 1px solid;
        border-color: #000000;
    }

    .desktop .button-3 {
        font-size: large;
        font-family: "Inter-Regular", Helvetica;
        display: flex;
        width: 390px;
        height: 94px;
        align-items: center;
        justify-content: center;
        gap: var(--size-space-200);
        padding: var(--size-space-200);
        position: absolute;
        top: 817px;
        left: 500px;
        background-color: #ffffff;
        border-radius: var(--size-radius-200);
        overflow: hidden;
    }

    .desktop .select {
        position: relative;
        width: fit-content;
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: white;
        font-size: 20px;
        letter-spacing: 0;
        line-height: 20px;
    }
    :root {
        --single-line-body-base-font-family: "Inter", Helvetica;
        --single-line-body-base-font-weight: 400;
        --single-line-body-base-font-size: 16px;
        --single-line-body-base-letter-spacing: 0px;
        --single-line-body-base-line-height: 100%;
        --single-line-body-base-font-style: normal;
        --collection-1-color: rgba(255, 255, 255, 1);
        --color-text-brand-on-brand: var(--color-primitives-brand-100);
        --color-background-brand-default: var(--color-primitives-brand-800);
        --color-background-brand-hover: var(--color-primitives-brand-900);
        --color-border-brand-default: var(--color-primitives-brand-800);
        --color-primitives-brand-100: rgba(245, 245, 245, 1);
        --color-primitives-brand-900: rgba(30, 30, 30, 1);
        --color-primitives-brand-800: rgba(44, 44, 44, 1);
        --color-primitives-brand-300: rgba(217, 217, 217, 1);
        --size-space-200: 8px;
        --size-radius-200: 8px;
    }

    /*

    To enable a theme in your HTML, simply add one of the following data attributes to an HTML element, like so:

    <body data-color-mode="SDS-light">
        <!-- the rest of your content -->
    </body>

    You can apply the theme on any DOM node, not just the `body`

    */

    [data-color-mode="SDS-light"] {
        --color-text-brand-on-brand: var(--color-primitives-brand-100);
        --color-background-brand-default: var(--color-primitives-brand-800);
        --color-background-brand-hover: var(--color-primitives-brand-900);
        --color-border-brand-default: var(--color-primitives-brand-800);
    }

    [data-color-mode="SDS-dark"] {
        --color-text-brand-on-brand: var(--color-primitives-brand-900);
        --color-background-brand-default: var(--color-primitives-brand-100);
        --color-background-brand-hover: var(--color-primitives-brand-300);
        --color-border-brand-default: var(--color-primitives-brand-100);
    }

</style>
<head>
    <%@include file="/include/htmlHead.jsp"%>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="globals.css" />
    <form name="logoutForm" action="Dispatcher" method="post">
        <input type="hidden" name="controllerAction" value="HomeManagement.logout"/>
    </form>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        var applicationMessage;
        <% if (applicationMessage != null && !applicationMessage.isEmpty()) { %>
        applicationMessage = "<%= applicationMessage %>";
        <% } %>

        function onLoadHandler() {
            // Chiamata a eventuali altre funzioni di onload
            try { headerOnLoadHandler(); } catch (e) {}
            try { mainOnLoadHandler(); } catch (e) {}

            // Mostra il messaggio di errore se presente
            if (applicationMessage != undefined) {
                alert(applicationMessage);
            }
        }

        // Aggiungi l'event listener per il caricamento della pagina
        window.addEventListener("load", onLoadHandler);
    </script>
</head>
<body>
<div class="desktop">
    <div class="overlap-group-wrapper">
        <div class="overlap-group">
            <div class="frame"><img class="concerto-musicale" src="https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=2148&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"/></div>
            <div class="rectangle"></div>
            <div class="div-wrapper"><div class="text-wrapper">Seleziona l'operazione che desideri:</div></div>
            <div style="align-content: center">
                <% if (loggedOn) { %>
                <div class="benvenuto-your-name-wrapper">
                    <div class="benvenuto-your-name">Benvenuto:<br /><br /><br /><%=loggedUser.getname()%> <%=loggedUser.getsurname()%></div>
                </div>
                <% } %></div>
            <div class="group">
                <img class="account" src="https://www.svgrepo.com/show/453660/account.svg" onclick="location.href='Dispatcher?controllerAction=HomeManagement.loginView'"/>
                <% if (loggedOn) { %>
                <a href="javascript:logoutForm.submit()">
                    <svg class="account" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V256c0 17.7 14.3 32 32 32s32-14.3 32-32V32zM143.5 120.6c13.6-11.3 15.4-31.5 4.1-45.1s-31.5-15.4-45.1-4.1C49.7 115.4 16 181.8 16 256c0 132.5 107.5 240 240 240s240-107.5 240-240c0-74.2-33.8-140.6-86.6-184.6c-13.6-11.3-33.8-9.4-45.1 4.1s-9.4 33.8 4.1 45.1c38.9 32.3 63.5 81 63.5 135.4c0 97.2-78.8 176-176 176s-176-78.8-176-176c0-54.4 24.7-103.1 63.5-135.4z"/></svg>
                </a>
                <% } %>
            </div>
            <% if (loggedOn) { %>
            <button class="button" onclick="location.href='Dispatcher?controllerAction=UploadManagement.uploadView'">
                <img class="upload" src="upload.svg"/> <p class="add">Aggiungi nuovi contenuti</p>
            </button>
            <div class="button-2" onclick="location.href='Dispatcher?controllerAction=UploadManagement.eventView'">
                <p class="select">Seleziona contenuti per creare un post<br />(solo organizzatori di eventi)</p>
            </div>
            <% } else {%>
            <div class="button-3" style="align-content: center; color: black;">Esegui il login con un account organizzatore!</div>
            <% } %>
        </div>
    </div>
</div>
</body>
</html>