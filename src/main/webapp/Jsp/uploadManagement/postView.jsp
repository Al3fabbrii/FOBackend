<%@ page import="com.fo.fo.model.mo.USER" %>
<%
    boolean loggedOn = (Boolean) request.getAttribute("loggedOn");
    USER loggedUser = (USER) request.getAttribute("loggedUser");
    String applicationMessage = (String) request.getAttribute("applicationMessage");
    String menuActiveLink = "postView";
    String postFolderName = (String) request.getAttribute("postFolderName");
    System.out.println("postFolderName in JSP: " + postFolderName);
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

    .desktop .div {
        background-color: #ffffff;
        width: 1440px;
        height: 1024px;
        position: relative;
    }

    .desktop .overlap-group {
        width: 1139px;
        height: 900px;
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

    .desktop .overlap-3 {
        position: absolute;
        width: 45px;
        height: 45px;
        top: 17px;
        left: 1370px;
        background-color: #ffffff;
        background-image: url(https://www.svgrepo.com/show/522900/home-1.svg);
        background-size: cover;
        background-position: 50% 50%;
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
        top: 961px;
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
        top: 961px;
        background-color: #336699;
        border-radius: var(--size-radius-200);
        overflow: hidden;
        border: 1px solid;
        border-color: #000000;
    }
    div.gallery {
        position: relative;
        margin-top: 5px;
        float: left;
        width: 200px;
        padding: 5px;
        border-radius: 15px;
    }

    div.gallery img {
        width: 100%;
        height: auto;
        border-radius: 15px;
        border: 2px solid;
        border-color: black;
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
        --color-text-default-tertiary: var(--color-primitives-gray-400);
        --color-text-default-default: var(--color-primitives-gray-900);
        --color-background-default-default: var(--color-primitives-white-1000);
        --color-border-default-default: var(--color-primitives-gray-300);
        --color-text-brand-on-brand: var(--color-primitives-brand-100);
        --color-background-brand-hover: var(--color-primitives-brand-900);
        --color-background-brand-default: var(--color-primitives-brand-800);
        --color-border-brand-default: var(--color-primitives-brand-800);
        --size-space-200: 8px;
        --size-space-300: 12px;
        --size-space-400: 16px;
        --size-radius-200: 8px;
        --color-primitives-gray-400: rgba(179, 179, 179, 1);
        --color-primitives-gray-900: rgba(30, 30, 30, 1);
        --color-primitives-white-400: rgba(255, 255, 255, 0.4);
        --color-primitives-white-1000: rgba(255, 255, 255, 1);
        --color-primitives-gray-300: rgba(217, 217, 217, 1);
        --color-primitives-gray-600: rgba(68, 68, 68, 1);
        --color-primitives-brand-100: rgba(245, 245, 245, 1);
        --color-primitives-brand-900: rgba(30, 30, 30, 1);
        --color-primitives-brand-800: rgba(44, 44, 44, 1);
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
        --color-text-default-tertiary: var(--color-primitives-gray-400);
        --color-text-default-default: var(--color-primitives-gray-900);
        --color-background-default-default: var(--color-primitives-white-1000);
        --color-border-default-default: var(--color-primitives-gray-300);
        --color-text-brand-on-brand: var(--color-primitives-brand-100);
        --color-background-brand-hover: var(--color-primitives-brand-900);
        --color-background-brand-default: var(--color-primitives-brand-800);
        --color-border-brand-default: var(--color-primitives-brand-800);
    }

    [data-color-mode="SDS-dark"] {
        --color-text-default-tertiary: var(--color-primitives-white-400);
        --color-text-default-default: var(--color-primitives-white-1000);
        --color-background-default-default: var(--color-primitives-gray-900);
        --color-border-default-default: var(--color-primitives-gray-600);
        --color-text-brand-on-brand: var(--color-primitives-brand-900);
        --color-background-brand-hover: var(--color-primitives-brand-300);
        --color-background-brand-default: var(--color-primitives-brand-100);
        --color-border-brand-default: var(--color-primitives-brand-100);
    }
</style>
<head>
    <%@include file="/include/htmlHead.jsp"%>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="globals.css" />
    <script src="https://sdk.amazonaws.com/js/aws-sdk-2.283.1.min.js"></script>
</head>
<body>
<div class="desktop">
    <div class="div">
        <div class="overlap-group">
            <form name="createPostForm" action="Dispatcher" method="post">
                <div class="input-field">
                    <label for="nome_evento" class="label">Nome dell'evento:</label>
                    <input  type="text" id="nome_evento" name="nome_evento" class="input">
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
                <input type="hidden" name="controllerAction" value="UploadManagement.createPost"/>
                <div class="button">
                    <input class="button-2" type="submit" value="Conferma">
                </div>
            </form>
            <input type="hidden" id="postFolderName" value="<%= postFolderName %>">
            <script>
                // Configura le tue credenziali AWS
                AWS.config.update({
                    accessKeyId: 'AKIAXYKJQ6BAARRPFO46',
                    secretAccessKey: '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',
                    region: 'eu-south-1'
                });

                function loadImagesForEvent() {
                    const s3 = new AWS.S3();
                    const bucketName = 'projectfo';

                    // Get the folder name from the hidden input
                    const folderName = document.getElementById('postFolderName').value;
                    console.log("folderName from hidden input:", folderName);

                    // If folderName is empty, use 'PostCreation' as default
                    const prefix = folderName ? 'Posts/' + folderName + '/' : 'PostCreation/';

                    s3.listObjects({
                        Bucket: bucketName,
                        Prefix: prefix,
                    }, function (err, data) {
                        if (err) {
                            console.error('Error fetching images:', err);
                            return;
                        }

                        var groupElement = document.querySelector('.group');
                        groupElement.innerHTML = '';

                        data.Contents.forEach(function (object, index) {
                            if (!object.Key.endsWith('/')) {
                                var imageUrl = 'https://s3.' + s3.config.region + '.amazonaws.com/' + bucketName + '/' + object.Key;
                                var galleryElement = document.createElement('div');
                                galleryElement.classList.add('gallery');
                                var imgElement = document.createElement('img');
                                imgElement.src = imageUrl;
                                imgElement.alt = 'image' + (index + 1);
                                galleryElement.appendChild(imgElement);
                                groupElement.appendChild(galleryElement);
                            }
                        });
                    });
                }

                // Function to set the folder name and load images
                window.addEventListener('load', loadImagesForEvent);
            </script>

            <div class="group"></div>
        </div>
        <div class="overlap-3" onclick="location.href='Dispatcher?controllerAction=HomeManagement.view' "></div>
        <button class="button-3"><div class="button-2" onclick="location.href='Dispatcher?controllerAction=UploadManagement.eventView' ">Annulla</div></button>
    </div>
</div>
</body>
</html>