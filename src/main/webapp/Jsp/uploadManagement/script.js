// script.js


// Configura le tue credenziali AWS
AWS.config.update({
    accessKeyId: 'AKIAXYKJQ6BAARRPFO46',
    secretAccessKey: '',
    region: 'eu-south-1'  // Es. 'eu-south-1'
});


const s3 = new AWS.S3();


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
        Bucket: 'projectfo',
        Key: file.name,
        Body: file,
        ACL: 'public-read'  // Puoi configurarlo secondo le tue necessità
    };


    s3.upload(params, function(err, data) {
        const statusDiv = document.getElementById('status');
        if (err) {
            statusDiv.textContent = `Errore nel caricamento: ${err.message}`;
        } else {
            statusDiv.innerHTML += `File caricato con successo: <a href="${data.Location}" target="_blank">${data.Location}</a><br>`;
        }
    });
}

