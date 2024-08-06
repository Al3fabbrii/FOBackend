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

    .desktop .div {
        background-color: #ffffff;
        width: 1440px;
        height: 1024px;
        position: relative;
    }

    .desktop .overlap {
        position: absolute;
        width: 1200px;
        height: 771px;
        top: 80px;
        left: 22px;
    }
    .desktop .account {
        position: relative;
        width: 64px;
        height: 64px;
        top: -10px;
        left: -10px;
        object-fit: cover;
        backdrop-filter: brightness(0%);
        border-radius: 90px;
        border: 3px solid;
        border-color: #000000;
    }
    .desktop .overlap-group {
        position: absolute;
        width: 1200px;
        height: 594px;
        top: 0;
        left: 0;
    }

    .desktop .group {
        position: absolute;
        width: 1004px;
        height: 434px;
        top: 0;
        left: 196px;
        background-color: #336699;
        border-radius: 20px;
        border-color: black;
        border-width: 5px;
    }

    .desktop .frame {
        display: flex;
        width: 766px;
        height: 136px;
        top: 149px;
        left: 150px;
        align-items: center;
        justify-content: center;
        gap: 10px;
        position: relative;
        background-color: #336699;

    }

    .desktop .text-wrapper {
        position: relative;
        width: fit-content;
        font-family: "Inter-Regular", Helvetica;
        font-weight: 400;
        color: #ffffff;
        font-size: 50px;
        letter-spacing: 0;
        line-height: normal;
    }

    .desktop .select-field {
        display: flex;
        flex-direction: column;
        width: 237px;
        height: 162px;
        align-items: flex-start;
        gap: var(--size-space-200);
        position: absolute;
        top: 432px;
        left: -150px;
    }

    .desktop .label {
        position: relative;
        align-self: stretch;
        margin-top: -1px;
        font-family: var(--body-base-font-family);
        font-weight: var(--body-base-font-weight);
        color: var(--color-text-default-default);
        font-size: var(--body-base-font-size);
        letter-spacing: var(--body-base-letter-spacing);
        line-height: var(--body-base-line-height);
        font-style: var(--body-base-font-style);
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
        margin-right: -4px;
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

    .desktop .chevron-down {
        position: relative;
        width: 16px;
        height: 16px;
    }

    .desktop .overlap-2 {
        position: absolute;
        width: 602px;
        height: 255px;
        top: 516px;
        left: 397px;
    }

    .desktop .overlap-3 {
        position: absolute;
        width: 45px;
        height: 45px;
        top: 17px;
        left: 1370px;
        background-color: #336699;
        border-radius: 22.5px;
        background-image: url(https://www.svgrepo.com/show/453660/account.svg);
        background-size: cover;
        background-position: 50% 50%;
        border-color: black;
        border: 2px solid;
    }

    .desktop .button {
        all: unset;
        box-sizing: border-box;
        width: 226px;
        left: 1189px;
        display: flex;
        height: 81px;
        align-items: center;
        justify-content: center;
        gap: var(--size-space-200);
        padding: var(--size-space-300);
        position: absolute;
        top: 800px;
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
        color: var(--color-text-brand-on-brand);
        font-size: 32px;
        letter-spacing: 0;
        line-height: 32px;
        white-space: nowrap;
    }

    .desktop .button-3 {
        all: unset;
        box-sizing: border-box;
        width: 235px;
        left: 24px;
        display: flex;
        height: 81px;
        align-items: center;
        justify-content: center;
        gap: var(--size-space-200);
        padding: var(--size-space-300);
        position: absolute;
        top: 800px;
        background-color: #336699;
        border-radius: var(--size-radius-200);
        overflow: hidden;
        border: 1px solid;
        border-color: #000000;
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
        --color-text-brand-on-brand: var(--color-primitives-brand-100);
        --color-text-default-default: var(--color-primitives-gray-900);
        --color-background-default-default: var(--color-primitives-white-1000);
        --color-border-default-default: var(--color-primitives-gray-300);
        --color-background-brand-default: var(--color-primitives-brand-800);
        --color-background-brand-hover: var(--color-primitives-brand-900);
        --color-border-brand-default: var(--color-primitives-brand-800);
        --color-primitives-brand-100: rgba(245, 245, 245, 1);
        --color-primitives-gray-900: rgba(30, 30, 30, 1);
        --color-primitives-brand-900: rgba(30, 30, 30, 1);
        --color-primitives-white-1000: rgba(255, 255, 255, 1);
        --color-primitives-gray-300: rgba(217, 217, 217, 1);
        --color-primitives-gray-600: rgba(68, 68, 68, 1);
        --color-primitives-brand-800: rgba(44, 44, 44, 1);
        --color-primitives-brand-300: rgba(217, 217, 217, 1);
        --size-space-200: 8px;
        --size-space-400: 16px;
        --size-space-300: 12px;
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
        --color-text-default-default: var(--color-primitives-gray-900);
        --color-background-default-default: var(--color-primitives-white-1000);
        --color-border-default-default: var(--color-primitives-gray-300);
        --color-background-brand-default: var(--color-primitives-brand-800);
        --color-background-brand-hover: var(--color-primitives-brand-900);
        --color-border-brand-default: var(--color-primitives-brand-800);
    }

    [data-color-mode="SDS-dark"] {
        --color-text-brand-on-brand: var(--color-primitives-brand-900);
        --color-text-default-default: var(--color-primitives-white-1000);
        --color-background-default-default: var(--color-primitives-gray-900);
        --color-border-default-default: var(--color-primitives-gray-600);
        --color-background-brand-default: var(--color-primitives-brand-100);
        --color-background-brand-hover: var(--color-primitives-brand-300);
        --color-border-brand-default: var(--color-primitives-brand-100);
    }
    .upload-container {
        background: white;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    h1 {
        margin-bottom: 20px;
    }
</style>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="globals.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<script src="https://sdk.amazonaws.com/js/aws-sdk-2.283.1.min.js"></script>
<div class="desktop">
    <div class="div">
        <div class="overlap">
            <div class="overlap-group">
                <div class="group"/>
                <div class="frame"><div class="text-wrapper">Event name and information:</div></div>
                <div class="select-field">
                    <label for="select" class="label">Seleziona l'evento</label>
                    <select name="select" id="select" class="select">
                        <option class="value" id="Event1">Evento 1</option>
                        <option class="value" id="Event2">Evento 2</option>
                        <option class="value" id="Event3">Evento 3</option>
                        <option class="value" id="Event4">Evento 4</option>
                        <option class="value" id="Event5">Evento 5</option>
                        <option class="value" id="Event6">Evento 6</option>
                    </select>
                </div>
            </div>
            <div class="overlap-2">
                <div class="upload-container">
                    <h1>Carica Immagini e Video su S3</h1>
                    <form id="uploadForm" enctype="multipart/form-data" method="post">
                        <input type="file" id="fileInput" accept="image/*,video/*" multiple required>
                        <button type="submit">Carica</button>
                        <script> //


                        // Configura le tue credenziali AWS
                        AWS.config.update({
                            accessKeyId: 'AKIAXYKJQ6BAARRPFO46',
                            secretAccessKey: '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',
                            region: 'eu-south-1'  // Es. 'eu-south-1'
                        });


                        const s3 = new AWS.S3();


                            document.getElementById('select').addEventListener('change', function() {
                            var selectedValue = this.value;
                            var resultDiv = document.getElementById('result');

                            switch(selectedValue) {
                            case 'Event1':
                                resultDiv.textContent = 'You selected Option 1';
                                break;
                            case 'Event2':
                                resultDiv.textContent = 'You selected Option 2';
                                break;
                            case 'Event3':
                                resultDiv.textContent = 'You selected Option 3';
                                break;
                            case 'Event4':
                                resultDiv.textContent = 'You selected Option 4';
                                break;
                            case 'Event5':
                                resultDiv.textContent = 'You selected Option 5';
                                break;
                            case 'Event6':
                                resultDiv.textContent = 'You selected Option 6';
                                break;
                        }
                        });


                        document.getElementById('uploadForm').addEventListener('submit', function(event) {
                            event.preventDefault();
                            console.log('Form submit intercepted');
                            const files = document.getElementById('fileInput').files;
                            if (files.length > 0) {
                                for (let i = 0; i < files.length; i++) {
                                    uploadFile(files[i]);
                                }
                            }
                        });


                        function uploadFile(file) {
                            const params = {
                                Bucket: 'projectfo/${selectedValue}',
                                Key: file.name,
                                Body: file,
                                ACL: 'public-read'  // Puoi configurarlo secondo le tue necessità
                            };


                            s3.upload(params, function(err, data) {
                                const statusDiv = document.getElementById('status');
                                if (err) {
                                    statusDiv.textContent = `Errore nel caricamento: ${err.message}`;
                                } else {
                                    statusDiv.innerHTML += `File caricato con successo! <a href="${data.Location}" target="_blank">${data.Location}</a><br>`;
                                }
                            });
                        }

                        </script>
                    </form>
                    <div id="status"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="overlap-3" onclick="location.href='Dispatcher?controllerAction=homeManagement.loginView' "></div>
    <button class="button"><p class="button-2" onclick="location.href='Dispatcher?controllerAction=PostViewManagement.postView' ">Conferma</p></button>
    <button class="button-3"><p class="button-2" onclick="location.href='Dispatcher?controllerAction=HomeManagement.view' ">Annulla</p></button>
</div>
</div>
</body>
</html>
