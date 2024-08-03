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

</style>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="globals.css" />
</head>
<body>
<div class="desktop">
    <div class="div">
        <div class="overlap">
            <div class="overlap-group">
                <div class="group"/>
                <div class="frame"><div class="text-wrapper">Event name and information:</div></div>
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
            <div class="overlap-2">
                <script src="https://cdn02.jotfor.ms/static/prototype.forms.js?v=3.3.55616" type="text/javascript"></script>
                <script src="https://cdn03.jotfor.ms/static/jotform.forms.js?v=3.3.55616" type="text/javascript"></script>
                <script src="https://cdn01.jotfor.ms/js/vendor/imageinfo.js?v=3.3.55616" type="text/javascript"></script>
                <script src="https://cdn02.jotfor.ms/file-uploader/fileuploader.js?v=3.3.55616" type="text/javascript"></script>
                <script src="https://cdn03.jotfor.ms/js/vendor/smoothscroll.min.js?v=3.3.55616" type="text/javascript"></script>
                <script src="https://cdn01.jotfor.ms/js/errorNavigation.js?v=3.3.55616" type="text/javascript"></script>
                <script type="text/javascript">	JotForm.newDefaultTheme = true;
                JotForm.extendsNewTheme = false;
                JotForm.singleProduct = false;
                JotForm.newPaymentUIForNewCreatedForms = false;
                JotForm.texts = {"confirmEmail":"E-mail does not match","pleaseWait":"Please wait...","validateEmail":"You need to validate this e-mail","confirmClearForm":"Are you sure you want to clear the form","lessThan":"Your score should be less than or equal to","incompleteFields":"There are incomplete required fields. Please complete them.","required":"This field is required.","requireOne":"At least one field required.","requireEveryRow":"Every row is required.","requireEveryCell":"Every cell is required.","email":"Enter a valid e-mail address","alphabetic":"This field can only contain letters","numeric":"This field can only contain numeric values","alphanumeric":"This field can only contain letters and numbers.","cyrillic":"This field can only contain cyrillic characters","url":"This field can only contain a valid URL","currency":"This field can only contain currency values.","fillMask":"Field value must fill mask.","uploadExtensions":"You can only upload following files:","noUploadExtensions":"File has no extension file type (e.g. .txt, .png, .jpeg)","uploadFilesize":"File size cannot be bigger than:","uploadFilesizemin":"File size cannot be smaller than:","gradingScoreError":"Score total should only be less than or equal to","inputCarretErrorA":"Input should not be less than the minimum value:","inputCarretErrorB":"Input should not be greater than the maximum value:","maxDigitsError":"The maximum digits allowed is","minCharactersError":"The number of characters should not be less than the minimum value:","maxCharactersError":"The number of characters should not be more than the maximum value:","freeEmailError":"Free email accounts are not allowed","minSelectionsError":"The minimum required number of selections is ","maxSelectionsError":"The maximum number of selections allowed is ","pastDatesDisallowed":"Date must not be in the past.","dateLimited":"This date is unavailable.","dateInvalid":"This date is not valid. The date format is {format}","dateInvalidSeparate":"This date is not valid. Enter a valid {element}.","ageVerificationError":"You must be older than {minAge} years old to submit this form.","multipleFileUploads_typeError":"{file} has invalid extension. Only {extensions} are allowed.","multipleFileUploads_sizeError":"{file} is too large, maximum file size is {sizeLimit}.","multipleFileUploads_minSizeError":"{file} is too small, minimum file size is {minSizeLimit}.","multipleFileUploads_emptyError":"{file} is empty, please select files again without it.","multipleFileUploads_uploadFailed":"File upload failed, please remove it and upload the file again.","multipleFileUploads_onLeave":"The files are being uploaded, if you leave now the upload will be cancelled.","multipleFileUploads_fileLimitError":"Only {fileLimit} file uploads allowed.","dragAndDropFilesHere_infoMessage":"Drag and drop files here","chooseAFile_infoMessage":"Choose a file","maxFileSize_infoMessage":"Max. file size","generalError":"There are errors on the form. Please fix them before continuing.","generalPageError":"There are errors on this page. Please fix them before continuing.","wordLimitError":"Too many words. The limit is","wordMinLimitError":"Too few words.  The minimum is","characterLimitError":"Too many Characters.  The limit is","characterMinLimitError":"Too few characters. The minimum is","ccInvalidNumber":"Credit Card Number is invalid.","ccInvalidCVC":"CVC number is invalid.","ccInvalidExpireDate":"Expire date is invalid.","ccInvalidExpireMonth":"Expiration month is invalid.","ccInvalidExpireYear":"Expiration year is invalid.","ccMissingDetails":"Please fill up the credit card details.","ccMissingProduct":"Please select at least one product.","ccMissingDonation":"Please enter numeric values for donation amount.","disallowDecimals":"Please enter a whole number.","restrictedDomain":"This domain is not allowed","ccDonationMinLimitError":"Minimum amount is {minAmount} {currency}","requiredLegend":"All fields marked with * are required and must be filled.","geoPermissionTitle":"Permission Denied","geoPermissionDesc":"Check your browser's privacy settings.","geoNotAvailableTitle":"Position Unavailable","geoNotAvailableDesc":"Location provider not available. Please enter the address manually.","geoTimeoutTitle":"Timeout","geoTimeoutDesc":"Please check your internet connection and try again.","selectedTime":"Selected Time","formerSelectedTime":"Former Time","cancelAppointment":"Cancel Appointment","cancelSelection":"Cancel Selection","noSlotsAvailable":"No slots available","slotUnavailable":"{time} on {date} has been selected is unavailable. Please select another slot.","multipleError":"There are {count} errors on this page. Please correct them before moving on.","oneError":"There is {count} error on this page. Please correct it before moving on.","doneMessage":"Well done! All errors are fixed.","invalidTime":"Enter a valid time","doneButton":"Done","reviewSubmitText":"Review and Submit","nextButtonText":"Next","prevButtonText":"Previous","seeErrorsButton":"See Errors","notEnoughStock":"Not enough stock for the current selection","notEnoughStock_remainedItems":"Not enough stock for the current selection ({count} items left)","soldOut":"Sold Out","justSoldOut":"Just Sold Out","selectionSoldOut":"Selection Sold Out","subProductItemsLeft":"({count} items left)","startButtonText":"START","submitButtonText":"Submit","submissionLimit":"Sorry! Only one entry is allowed. <br> Multiple submissions are disabled for this form.","reviewBackText":"Back to Form","seeAllText":"See All","progressMiddleText":"of","fieldError":"field has an error.","error":"Error"};
                JotForm.newPaymentUI = true;
                JotForm.originalLanguage = "en";
                JotForm.replaceTagTest = true;
                JotForm.submitError="jumpToFirstError";
                window.addEventListener('DOMContentLoaded',function(){window.brandingFooter.init({"formID":242081750103343,"campaign":"powered_by_jotform_le","isCardForm":false,"isLegacyForm":true,"formLanguage":"en"})});	JotForm.isFullSource = true;

                JotForm.init(function(){
                    /*INIT-START*/
                    JotForm.alterTexts({"confirmClearForm":"Are you sure you want to clear the form","lessThan":"Your score should be less than"});
                    setTimeout(function() {
                        JotForm.initMultipleUploads();
                    }, 2);
                    /*INIT-END*/
                });

                setTimeout(function() {
                    JotForm.paymentExtrasOnTheFly([null,null,null,{"name":"pickYour3","qid":"3","text":"","type":"control_fileupload"}]);}, 20);
                </script>
                <link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/stylebuilder/static/form-common.css?v=10373ab
"/>
                <style type="text/css">@media print{*{-webkit-print-color-adjust: exact !important;color-adjust: exact !important;}.form-section{display:inline!important}.form-pagebreak{display:none!important}.form-section-closed{height:auto!important}.page-section{position:initial!important}}</style>
                <link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.55616&themeRevisionID=63e6805f64383509e31513f4"/>
                <link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/css/styles/payment/payment_styles.css?3.3.55616" />
                <link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/css/styles/payment/payment_feature.css?3.3.55616" />
                <style type="text/css" id="form-designer-style">
                    /* Injected CSS Code */
                    /*PREFERENCES STYLE*/
                    .form-all {
                        font-family: Inter, sans-serif;
                    }

                    .form-label.form-label-auto {

                        display: inline-block;
                        float: left;
                        text-align: left;

                    }

                    .form-line {
                        position: absolute;
                        align-content: center;
                        top:-30px;
                        left:100px;
                        width: 400px;
                        height: 150px;
                    }

                    .form-all {
                        max-width: 752px;
                        width: 100%;
                        height: 0px;
                    }

                    .form-label.form-label-left,
                    .form-label.form-label-right,
                    .form-label.form-label-left.form-label-auto,
                    .form-label.form-label-right.form-label-auto {
                        width: 500px;
                    }

                    .form-all {
                        font-size: 16px
                    }

                    .supernova .form-all, .form-all {
                        background-color: #fff;
                    }

                    .form-all {
                        color: white;
                    }
                    .form-header-group .form-header {
                        color: white;
                    }
                    .form-header-group .form-subHeader {
                        color: white;
                    }
                    .form-label-top,
                    .form-label-left,
                    .form-label-right,
                    .form-html,
                    .form-checkbox-item label,
                    .form-radio-item label,
                    span.FITB .qb-checkbox-label,
                    span.FITB .qb-radiobox-label,
                    span.FITB .form-radio label,
                    span.FITB .form-checkbox label,
                    [data-blotid][data-type=checkbox] [data-labelid],
                    [data-blotid][data-type=radiobox] [data-labelid],
                    span.FITB-inptCont[data-type=checkbox] label,
                    span.FITB-inptCont[data-type=radiobox] label {
                        color: white;
                    }
                    .form-sub-label {
                        color: white;
                    }

                    .supernova {
                        background-color: #ffffff;
                    }
                    .supernova body {
                        background: transparent;
                    }

                    .form-textbox,
                    .form-textarea,
                    .form-dropdown,
                    .form-radio-other-input,
                    .form-checkbox-other-input,
                    .form-captcha input,
                    .form-spinner input {
                        background-color: white;
                    }

                    .supernova {
                        background-image: none;
                    }
                    #stage {
                        background-image: none;
                    }

                    .form-all {
                        background-image: none;
                    }

                    .ie-8 .form-all:before { display: none; }
                    .ie-8 {
                        margin-top: auto;
                        margin-top: initial;
                    }

                    /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/.form-label.form-label-auto {

                                                                      display: inline-block;
                                                                      float: left;
                                                                      text-align: left;

                                                                  }
                    /* Injected CSS Code */
                </style>

                <form class="jotform-form" onsubmit="return typeof testSubmitFunction !== 'undefined' && testSubmitFunction();" action="https://eu-submit.jotform.com/submit/242081750103343" method="post" enctype="multipart/form-data" name="form_242081750103343" id="242081750103343" accept-charset="utf-8" autocomplete="on"><input type="hidden" name="formID" value="242081750103343" /><input type="hidden" id="JWTContainer" value="" /><input type="hidden" id="cardinalOrderNumber" value="" /><input type="hidden" id="jsExecutionTracker" name="jsExecutionTracker" value="build-date-1722068989276" /><input type="hidden" id="submitSource" name="submitSource" value="unknown" /><input type="hidden" id="buildDate" name="buildDate" value="1722068989276" />
                    <div role="main" class="form-all">
                        <ul class="form-section page-section">
                            <li class="form-line form-line-column form-col-1" data-type="control_fileupload" id="id_3"><label class="form-label form-label-top" id="label_3" for="input_3" aria-hidden="true"> </label>
                                <div id="cid_3" class="form-input-wide" data-layout="full">
                                    <div class="jfQuestion-fields" data-wrapper-react="true">
                                        <div class="jfField isFilled">
                                            <div class="jfUpload-wrapper">
                                                <div class="jfUpload-container">
                                                    <div class="jfUpload-button-container">
                                                        <div class="jfUpload-button" aria-hidden="true" tabindex="0" style="display:none" data-version="v2">Upload a File<div class="jfUpload-heading forDesktop">Drag and drop files here</div>
                                                            <div class="jfUpload-heading forMobile">Choose a file</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jfUpload-files-container">
                                                    <div class="validate[multipleUpload]"><input type="file" id="input_3" name="q3_pickYour3[]" multiple="" class="form-upload-multiple" data-imagevalidate="yes" data-file-accept="jpg, png, mp4" data-limit-file-size="Yes" data-file-maxsize="102400" data-file-minsize="0" data-file-limit="" data-component="fileupload" aria-label="Upload a File" /></div>
                                                </div>
                                            </div>
                                            <div data-wrapper-react="true"></div>
                                        </div><span style="display:none" class="cancelText">Cancel</span><span style="display:none" class="ofText">of</span>
                                    </div>
                                </div>
                            </li>
                            <li style="clear:both"></li>
                            <li style="display:none">Should be Empty: <input type="text" name="website" value="" type="hidden" /></li>
                        </ul>
                    </div>
                    <script type="text/javascript">
                        var all_spc = document.querySelectorAll("form[id='242081750103343'] .si" + "mple" + "_spc");
                        for (var i = 0; i < all_spc.length; i++)
                        {
                            all_spc[i].value = "242081750103343-242081750103343";
                        }
                    </script>
                </form><script type="text/javascript">JotForm.ownerView=true;</script><script type="text/javascript">JotForm.forwardToEu=true;</script><script type="text/javascript">JotForm.isNewSACL=true;</script>
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
