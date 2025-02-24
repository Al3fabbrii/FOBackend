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
        width: 1500px;
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
        left: -55px;
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
        font-family: "Inter-Regular", Helvetica;
        font-weight: 300;
        text-align: center;
        color: white;
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
        font-weight: 500;
        text-align: center;
        color: white;
        font-size: 20px;
        letter-spacing: 0;
        line-height: normal;
        white-space: nowrap;
    }

    .desktop .overlap {
        position: absolute;
        width: 45px;
        height: 45px;
        top: 17px;
        left: 1670px;
        background-color: #ffffff;
        background-image: url(https://www.svgrepo.com/show/522900/home-1.svg);
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
        left: 1650px;
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
        left: -10px;
        white-space: nowrap;
    }
    div.gallery {
        position: relative;
        margin-top: 5px;
        float: left;
        width: 135px;
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
        position: relative;
        float: left;
        top: 5px;
        left: 30px;
        z-index: 100;
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://sdk.amazonaws.com/js/aws-sdk-2.283.1.min.js"></script>
</head>
<body>
<div class="desktop">
    <div class="div">
        <div class="overlap-group">
            <div class="frame"></div>
            <div class="event-name-and-wrapper">
                <p class="event-name-and">
                    <span class="text-wrapper">Event name and information:<br /></span>
                </p>
            </div>
            <div class="select-field">
            <label for="select" class="label">Seleziona l'evento</label>
            <select name="select" id="select" class="select">
                <option class="value" selected>Evento 1</option>
                <option class="value">Evento 2</option>
                <option class="value">Evento 3</option>
                <option class="value">Evento 4</option>
                <option class="value">Evento 5</option>
                <option class="value">Evento 6</option>
            </select>
                <script>
                    document.getElementById('select').addEventListener('change', function() {
                        selectedEvent = this.value;
                        loadImagesForEvent(selectedEvent);
                    });
                    // Configura le tue credenziali AWS
                    AWS.config.update({
                        accessKeyId: 'AKIAXYKJQ6BAARRPFO46',
                        secretAccessKey: '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',
                        region: 'eu-south-1'  // Es. 'eu-south-1'
                    });
                    function loadImagesForEvent(eventName) {
                        // Create an S3 client
                        // Define the S3 bucket and prefix (directory) for the selected event
                        const s3 = new AWS.S3();
                        const bucketName = 'projectfo';
                        var prefix = eventName; // Extract the event number from the selected event name
                        // List objects (images) in the S3 bucket for the selected event
                        s3.listObjects({
                            Bucket: bucketName,
                            Prefix: prefix
                        }, function(err, data) {
                            if (err) {
                                console.error('Error fetching images:', err);
                                return;
                            }
                            // Clear the existing images
                            var groupElement = document.querySelector('.group');
                            groupElement.innerHTML = '';
                            // Create new image elements and append them to the group
                            data.Contents.forEach(function(object, index) {
                                if (!object.Key.endsWith('/')) { // Exclude directories
                                    var imageUrl = 'https://s3.' + s3.config.region + '.amazonaws.com/' + bucketName + '/' + object.Key;
                                    var galleryElement = document.createElement('div');
                                    galleryElement.classList.add('gallery');
                                    // Create the checkbox element
                                    var checkboxElement = document.createElement('input');
                                    checkboxElement.type = 'checkbox';
                                    checkboxElement.classList.add('checkbox');
                                    checkboxElement.dataset.key = object.Key;
                                    var imgElement = document.createElement('img');
                                    imgElement.src = imageUrl;
                                    imgElement.alt = 'image' + (index + 1);
                                    groupElement.appendChild(checkboxElement);
                                    galleryElement.appendChild(imgElement);
                                    groupElement.appendChild(galleryElement);
                                }
                            });
                        });
                    }
                    function createPost() {
                        const s3 = new AWS.S3();
                        const bucketName = 'projectfo';

                        const selectedCheckboxes = document.querySelectorAll('.checkbox:checked');
                        console.log('Selected checkboxes:', selectedCheckboxes.length);

                        const selectedKeys = Array.from(selectedCheckboxes).map(checkbox => {
                            console.log('Checkbox data-key:', checkbox.dataset.key);
                            return checkbox.dataset.key;
                        });

                        if (selectedKeys.length === 0) {
                            alert('Please select at least one image.');
                            return;
                        }

                        // Generate a unique folder name for this post
                        const postFolderName = 'Post_' + Date.now();
                        const destinationPrefix = 'Posts/' + postFolderName + '/';

                        let completedRequests = 0;

                        selectedKeys.forEach(key => {
                            if (!key) {
                                console.error('Undefined key encountered');
                                completedRequests++;
                                return;
                            }
                            const filename = key.split('/').pop();

                            const params = {
                                Bucket: bucketName,
                                CopySource: bucketName + '/' + key,
                                Key: destinationPrefix + filename
                            };
                            console.log('Copying object with params:', params);
                            s3.copyObject(params, function(err, data) {
                                if (err) {
                                    console.error('Error copying object:', err);
                                    alert('An error occurred during the copy process.');
                                } else {
                                    console.log('Successfully copied:', key);
                                }

                                completedRequests++;
                                if (completedRequests === selectedKeys.length) {
                                    // All copies are done, now save the folder name for this post
                                    savePostFolderName(postFolderName);
                                }
                            });
                        });
                    }

                    function savePostFolderName(folderName) {
                        console.log('Trying to save post folder name:', folderName);

                        // Encode the folderName to handle special characters


                        // Redirect to the post view page with the folderName as a query parameter
                        window.location.href = `Dispatcher?controllerAction=UploadManagement.postView&folderName=`+folderName ;
                    }

                </script>
        </div>
            <div class="group"></div>
        </div>
        <div class="div-wrapper"><p class="p">Seleziona una o pi&ugrave; foto per creare il tuo post</p></div>
    </div>
    <div class="overlap" onclick="location.href='Dispatcher?controllerAction=HomeManagement.view' "></div>
    <div class="button" type='button' onclick="createPost()">
        <p class="button-2">Crea il post</p>
    </div>
</div>
</body>
</html>

