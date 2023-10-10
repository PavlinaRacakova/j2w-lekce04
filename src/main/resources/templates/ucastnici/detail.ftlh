[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>
<body>

<div class="container">
    [#include '/_common/header.ftlh']

    <div class="card" style="width: 18rem;">
        <img src=${ucastnik.fotoURL()} class="card-img-top" alt="profilová fotka">
        <div class="card-body">
            <h5 class="card-title">${ucastnik.jmeno()} ${ucastnik.prijmeni()}</h5>
            <p class="card-text">Bydliště: ${ucastnik.bydliste()}</p>
        </div>
    </div>
</div>
</body>
</html>
