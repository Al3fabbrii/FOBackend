<div class="gallery">
    <img  src="img/account.png" alt="image1" width="300" height="200">
</div><!DOCTYPE html>
<html>
<style>
    .desktop {
        background-color: #ffffff;
        display: flex;
        flex-direction: row;
        justify-content: center;
        width: 100%;
    }

    .desktop .div {
        background-color: #ffffff;
        width: 1440px;
        height: 1024px;
        position: relative;
    }

    .desktop .overlap-group {
        width: 1139px;
        height: 855px;
        left: 151px;
        background-color: #336699b2;
        border-radius: 30px;
        border: 3px solid;
        border-color: #000000;
        position: absolute;
        top: 37px;
    }

    .desktop .group {
        position: absolute;
        width: 821px;
        height: 311px;
        top: 555px;
        left: 156px;
    }
    .desktop .textarea-field {
        display: flex;
        flex-direction: column;
        width: 1092px;
        height: 180px;
        align-items: flex-start;
        gap: var(--size-space-200);
        position: absolute;
        top: 322px;
        left: 21px;
    }

    .desktop .label {
        position: relative;
        align-self: stretch;
        margin-top: -1px;
        font-family: var(--body-base-font-family);
        font-weight: var(--body-base-font-weight);
        color: #1e1e1e;
        font-size: var(--body-base-font-size);
        letter-spacing: var(--body-base-letter-spacing);
        line-height: var(--body-base-line-height);
        font-style: var(--body-base-font-style);
    }
    .desktop .text {
        display: flex;
        min-width: 1060px;
        min-height: 160px;
        align-items: flex-start;
        padding: var(--size-space-300) var(--size-space-400) var(--size-space-300) var(--size-space-400);
        position: relative;
        flex: 0 0 auto;
        align-self: stretch;
        width: 97%;
        flex-grow: 1;
        margin-bottom: -1px;
        margin-left: -1px;
        margin-right: -1px;
        background-color: var(--color-background-default-default);
        border-radius: var(--size-radius-200);
        overflow: hidden;
        border: 1px solid;
        color: black;
        border-color: var(--color-border-default-default);
    }
    .desktop .input {
        display: flex;
        min-width: 240px;
        align-items: center;
        padding: var(--size-space-300) var(--size-space-400) var(--size-space-300) var(--size-space-400);
        position: relative;
        align-self: stretch;
        width: 97%;
        flex: 0 0 auto;
        margin-bottom: -1px;
        margin-left: -1px;
        margin-right: -1px;
        background-color: var(--color-background-default-default);
        border-radius: var(--size-radius-200);
        overflow: hidden;
        border: 1px solid;
        color: black;
        border-color: var(--color-border-default-default);
    }
    .desktop .input-field {
        display: flex;
        flex-direction: column;
        width: 1092px;
        align-items: flex-start;
        gap: var(--size-space-200);
        position: absolute;
        top: 52px;
        left: 21px;
    }
    .desktop .input-field-2 {
        top: 142px;
        display: flex;
        flex-direction: column;
        width: 1092px;
        align-items: flex-start;
        gap: var(--size-space-200);
        position: absolute;
        left: 21px;
    }

    .desktop .input-field-3 {
        top: 232px;
        display: flex;
        flex-direction: column;
        width: 1092px;
        align-items: flex-start;
        gap: var(--size-space-200);
        position: absolute;
        left: 21px;
    }

    .desktop .overlap {
        width: 45px;
        height: 45px;
        left: 1372px;
        background-color: #336699;
        border-radius: 22.5px;
        background-image: url(./img/account.png);
        background-size: cover;
        background-position: 50% 50%;
        position: absolute;
        top: 37px;
    }
    .desktop .button {
        all: unset;
        box-sizing: border-box;
        left: 1203px;
        display: flex;
        width: 173px;
        height: 70px;
        align-items: center;
        justify-content: center;
        gap: var(--size-space-200);
        padding: var(--size-space-300);
        position: absolute;
        top: 915px;
        background-color: #336699;
        border-radius: var(--size-radius-200);
        overflow: hidden;
        border: 1px solid;
        border-color: #000000;
    }

    .desktop .button-2 {
        all: unset;
        box-sizing: border-box;
        position: relative;
        width: fit-content;
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: #ffffff;
        font-size: 24px;
        letter-spacing: 0;
        line-height: 24px;
        white-space: nowrap;
    }
    .desktop .button-3 {
        all: unset;
        box-sizing: border-box;
        left: 65px;
        display: flex;
        width: 173px;
        height: 70px;
        align-items: center;
        justify-content: center;
        gap: var(--size-space-200);
        padding: var(--size-space-300);
        position: absolute;
        top: 915px;
        background-color: #336699;
        border-radius: var(--size-radius-200);
        overflow: hidden;
        border: 1px solid;
        border-color: #000000;
    }
    div.gallery {
        position: relative;
        margin: 5px;
        margin-left: 5px;
        float: left;
        width: 150px;
        border-radius: 15px;
    }

    div.gallery img {
        width: 100%;
        height: auto;
        border-radius: 15px;
        border: 2px solid;
        border-color: black;
    }
</style>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="globals.css" />
    <link rel="stylesheet" href="styleguide3.css" />
</head>
<body>
<div class="desktop">
    <div class="div">
        <div class="overlap-group">
            <div class="input-field">
                <label for="nome evento" class="label">Nome dell'evento:</label>
                <input  type="text" id="nome evento" name="nome evento" class="input">
            </div>
            <div class="input-field-2">
                <label for="luogo" class="label">Luogo dell'evento:</label>
                <input  type="text" id="luogo" name="luogo" class="input">
            </div>
            <div class="input-field-3">
                <label for="titolo" class="label">Titolo dell'evento:</label>
                <input  type="text" id="titolo" name="titolo" class="input">
            </div>
            <div class="textarea-field">
                <label for="descrizione" class="label">Descrizione del post:</label>
                <textarea class="text" id="descrizione" name="descrizione"></textarea>
            </div>
            <div class="group">
                <div class="gallery">
                    <img  src="img/account.png" alt="image1">
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image2">
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image3">
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image4">
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image5">
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image6">
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image7">
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image8">
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image9">
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image10">
                </div>

            </div>
        </div>
        <div class="overlap" onclick="location.href='Dispatcher?controllerAction=homeManagement.loginView' "></div>
        <button class="button"><div class="button-2">Conferma</div></button>
        <button class="button-3"><div class="button-2" onclick="location.href='Dispatcher?controllerAction=homeManagement.viewEvent' ">Annulla</div></button>
    </div>
</div>
</body>
</html>