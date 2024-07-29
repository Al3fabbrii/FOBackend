<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 26/07/2024
  Time: 09:40
  To change this template use File | Settings | File Templates.
--%>
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
        backdrop-filter: brightness(0%);
        border-radius: 90px;
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

</style>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="globals.css" />
    <link rel="stylesheet" href="styleguide.css" />
</head>
<body>
<div class="desktop">
    <div class="overlap-group-wrapper">
        <div class="overlap-group">
            <div class="frame"><img class="concerto-musicale" src="img/concerto-musicale.png" /></div>
            <div class="rectangle"></div>
            <div class="div-wrapper"><div class="text-wrapper">Seleziona l'operazione che desideri:</div></div>
            <div class="group"><img class="account" src="img/account.png" onclick="location.href='Dispatcher?controllerAction=homeManagement.loginView'"/></div>
            <div class="benvenuto-your-name-wrapper">
                <div class="benvenuto-your-name">Benvenuto:<br /><br /><br />&lt;your name&gt;</div>
            </div>
            <button class="button">
                <img class="upload" src="img/upload.svg" /> <p class="add">Aggiungi nuovi contenuti</p>
            </button>
            <div class="button-2">
                <p class="select">Seleziona contenuti per creare un post<br />(solo organizzatori di eventi)</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
