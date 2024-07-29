<!DOCTYPE html>
<html>
<style>
    .desktop{
        background-color: white;
        display: flex;
        flex-direction: row;
        justify-content: center;
        width: 100%
    }
    .desktop .div {
        background-color: #ffffff;
        width: 1440px;
        height: 1024px;
        position: relative;
    }
    .desktop .overlap-group {
        position: absolute;
        width: 1189px;
        height: 874px;
        top: 61px;
        left: 37px;
    }
    .desktop .frame {
        position: absolute;
        width: 1004px;
        height: 434px;
        top: 0;
        left: 181px;
        background-color: #336699;
    }
    .desktop .event-name-and-wrapper {
        display: flex;
        width: 766px;
        height: 136px;
        align-items: center;
        justify-content: center;
        gap: 10px;
        position: absolute;
        top: 81px;
        left: 304px;
    }
    .desktop .event-name-and {
        position: relative;
        width: fit-content;
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: #ffffff;
        font-size: 50px;
        letter-spacing: 0;
        line-height: normal;
    }
    .desktop .text-wrapper {
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: #ffffff;
        font-size: 50px;
        letter-spacing: 0;
    }
    .desktop .span {
        font-size: 20px;
    }

    .desktop .group {
        position: absolute;
        width: 1011px;
        height: 400px;
        top: 494px;
        left: 178px;
        background-color: #336699;
    }

    .desktop .select-field {
        display: flex;
        flex-direction: column;
        width: 239px;
        height: 85px;
        align-items: flex-start;
        gap: var(--size-space-200);
        position: absolute;
        top: 416px;
        left: -150px;
    }
    .desktop .select {
        display: flex;
        min-width: 240px;
        height: 42px;
        align-items: center;
        gap: var(--size-space-200);
        padding: var(--size-space-300) var(--size-space-300) var(--size-space-300) var(--size-space-400);
        position: relative;
        align-self: stretch;
        width: 100%;
        margin-left: -1px;
        margin-right: -2px;
        background-color: var(--color-background-default-default);
        border-radius: var(--size-radius-200);
        border: 1px solid;
        border-color: var(--color-border-default-default);
    }
    .desktop .value {
        position: relative;
        flex: 1;
        margin-top: -0.5px;
        font-family: var(--single-line-body-base-font-family);
        font-weight: var(--single-line-body-base-font-weight);
        color: var(--color-text-default-default);
        font-size: var(--single-line-body-base-font-size);
        letter-spacing: var(--single-line-body-base-letter-spacing);
        line-height: var(--single-line-body-base-line-height);
        font-style: var(--single-line-body-base-font-style);
    }

    .desktop .img {
        position: relative;
        width: 16px;
        height: 16px;
    }

    .desktop .div-wrapper {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        padding: 10px;
        position: absolute;
        top: 268px;
        left: 505px;
    }
    .desktop .p {
        position: relative;
        width: fit-content;
        margin-top: -1px;
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: #ffffff;
        font-size: 16px;
        letter-spacing: 0;
        line-height: normal;
        white-space: nowrap;
    }

    .desktop .overlap {
        position: absolute;
        width: 45px;
        height: 45px;
        top: 37px;
        left: 1500px;
        background-color: #336699;
        border-radius: 22.5px;
        background-image: url(img/account.png);
        background-size: cover;
        background-position: 50% 50%;
    }
    .desktop .button {
        all: unset;
        box-sizing: border-box;
        display: flex;
        width: 156px;
        height: 54px;
        align-items: center;
        justify-content: center;
        gap: var(--size-space-200);
        padding: var(--size-space-300);
        position: absolute;
        top: 880px;
        left: 1500px;
        background-color: #336699;
        border-radius: var(--size-radius-200);
        overflow: hidden;
        border: 1px solid;
        border-color: var(--color-border-brand-default);
    }

    .desktop .button-2 {
        all: unset;
        box-sizing: border-box;
        position: relative;
        width: fit-content;
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: var(--color-text-brand-on-brand);
        font-size: 20px;
        letter-spacing: 0;
        line-height: 20px;
        white-space: nowrap;
    }
    div.gallery {
        position: relative;
        margin: 5px;
        margin-left: 5px;
        float: left;
        width: 100px;
        border-radius: 15px;
    }

    div.gallery img {
        width: 100%;
        height: auto;
        border-radius: 15px;
        border: 2px solid;
        border-color: black;
    }
    .checkbox{
        position: absolute;
        top: 3px;
        right: 0px;
        border-radius: 15px;
    }
    :root {
        --body-base-font-family: "Inter", Helvetica;
        --body-base-font-weight: 400;
        --body-base-font-size: 16px;
        --body-base-letter-spacing: 0px;
        --body-base-line-height: 139.9999976158142%;
        --body-base-font-style: normal;
        --single-line-body-base-font-family: "Inter", Helvetica;
        --single-line-body-base-font-weight: 400;
        --single-line-body-base-font-size: 16px;
        --single-line-body-base-letter-spacing: 0px;
        --single-line-body-base-line-height: 100%;
        --single-line-body-base-font-style: normal;
        --collection-1-color: rgba(255, 255, 255, 1);
        --color-text-default-default: var(--color-primitives-gray-900);
        --color-text-brand-on-brand: var(--color-primitives-brand-100);
        --color-background-default-default: var(--color-primitives-white-1000);
        --color-border-brand-default: var(--color-primitives-brand-800);
        --color-border-default-default: var(--color-primitives-gray-300);
        --color-text-default-secondary: var(--color-primitives-gray-500);
        --color-border-brand-tertiary: var(--color-primitives-brand-500);
        --color-background-brand-default: var(--color-primitives-brand-800);
        --color-background-brand-hover: var(--color-primitives-brand-900);
        --size-radius-100: 4px;
        --size-space-200: 8px;
        --size-space-300: 12px;
        --size-space-400: 16px;
        --size-radius-200: 8px;
        --color-primitives-gray-900: rgba(30, 30, 30, 1);
        --color-primitives-brand-100: rgba(245, 245, 245, 1);
        --color-primitives-white-1000: rgba(255, 255, 255, 1);
        --color-primitives-brand-900: rgba(30, 30, 30, 1);
        --color-primitives-brand-800: rgba(44, 44, 44, 1);
        --color-primitives-gray-300: rgba(217, 217, 217, 1);
        --color-primitives-gray-600: rgba(68, 68, 68, 1);
        --color-primitives-gray-500: rgba(117, 117, 117, 1);
        --color-primitives-brand-500: rgba(117, 117, 117, 1);
        --color-primitives-white-500: rgba(255, 255, 255, 0.7);
        --color-primitives-brand-400: rgba(179, 179, 179, 1);
        --color-primitives-brand-300: rgba(217, 217, 217, 1);
    }

    /*

    To enable a theme in your HTML, simply add one of the following data attributes to an HTML element, like so:

    <body data-color-mode="SDS-light">
        <!-- the rest of your content -->
    </body>

    You can apply the theme on any DOM node, not just the `body`

    */

    [data-color-mode="SDS-light"] {
        --color-text-default-default: var(--color-primitives-gray-900);
        --color-text-brand-on-brand: var(--color-primitives-brand-100);
        --color-background-default-default: var(--color-primitives-white-1000);
        --color-border-brand-default: var(--color-primitives-brand-800);
        --color-border-default-default: var(--color-primitives-gray-300);
        --color-text-default-secondary: var(--color-primitives-gray-500);
        --color-border-brand-tertiary: var(--color-primitives-brand-500);
        --color-background-brand-default: var(--color-primitives-brand-800);
        --color-background-brand-hover: var(--color-primitives-brand-900);
    }

    [data-color-mode="SDS-dark"] {
        --color-text-default-default: var(--color-primitives-white-1000);
        --color-text-brand-on-brand: var(--color-primitives-brand-900);
        --color-background-default-default: var(--color-primitives-gray-900);
        --color-border-brand-default: var(--color-primitives-brand-100);
        --color-border-default-default: var(--color-primitives-gray-600);
        --color-text-default-secondary: var(--color-primitives-white-500);
        --color-border-brand-tertiary: var(--color-primitives-brand-400);
        --color-background-brand-default: var(--color-primitives-brand-100);
        --color-background-brand-hover: var(--color-primitives-brand-300);
    }
</style>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="globals.css" />
</head>
<body>
<div class="desktop">
    <div class="div">
        <div class="overlap-group">
            <div class="frame"></div>
            <div class="event-name-and-wrapper">
                <p class="event-name-and">
                    <span class="text-wrapper">Event name and information:<br /></span>
                    <span class="span">(aggiungere foto a scelta come sfondo)</span>
                </p>
            </div>
            <div class="group">
                <div class="gallery">
                    <img  src="img/account.png" alt="image1" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check1"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image2" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check2"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image3" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check3"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image4" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check4"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image5" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check5"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image6" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check6"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image7" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check7"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image8" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check8"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image9" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check9"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image10" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check10"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image11" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check11"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image12" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check12"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image13" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check13"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image14" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check14"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image15" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check15"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image16" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check16"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image17" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check17"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image18" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check18"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image19" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check19"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image20" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check20"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image21" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check21"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image22" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check22"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image23" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check23"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image24" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check24"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image25" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check25"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image26" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check26"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image27" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check27"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image28" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check28"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image29" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check29"/>
                </div>
                <div class="gallery">
                    <img  src="img/account.png" alt="image30" width="200" height="150">
                    <input type="checkbox" class="checkbox" id="check30"/>
                </div>

            </div>
            <div class="select-field">
                <label for="select" class="label">Seleziona l'evento</label>
                <select name="select" id="select" class="select">
                    <option class="value">Evento 1</option>
                    <option class="value">Evento 2</option>
                    <option class="value">Evento 3</option>
                    <option class="value">Evento 4</option>
                    <option class="value">Evento 5</option>
                    <option class="value">Evento 6</option>
                </select>
            </div>
        </div>
        <div class="div-wrapper"><p class="p">Seleziona una o più foto per creare il tuo post</p></div>
    </div>
    <div class="overlap" onclick="location.href='Dispatcher?controllerAction=homeManagement.loginView' "></div>
    <div class="button">
        <img class="img" src="img/tag.svg"/> <p class="button-2">Crea il post</p>
    </div>
</div>
</div>
</body>
</html>
