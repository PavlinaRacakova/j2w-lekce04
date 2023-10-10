[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>
<body>

<div class="container">
    [#include '/_common/header.ftlh']

    [#list ucastnici]
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Jméno a příjmení</th>
                <th scope="col">Bydliště</th>
                <th scope="col">Foto</th>
            </tr>
            </thead>
            <tbody>
            [#items as ucastnik]
                <tr>
                    <td>${ucastnik?counter}</td>
                    <td>${ucastnik.jmeno()} ${ucastnik.prijmeni()}</td>
                    <td>${ucastnik.bydliste()}</td>
                    <td><a href="/ucastnici/detail/${ucastnik?index}" class="btn btn-primary">Foto</a></td>
                </tr>
            [/#items]
            </tbody>
        </table>
    [#else]
        <div>
            <em>Seznam účastníků je prázdný.</em>
        </div>
    [/#list]
</div>
</body>
</html>
