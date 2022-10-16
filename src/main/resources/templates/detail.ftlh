[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="detail">
    <div class="vizitka">
        [#if zamestnanec.jmeno?exists]
        <div class="jmeno">${zamestnanec.jmeno}</div>
        [/#if]
        [#if zamestnanec.firma?exists]
        <div class="firma">${zamestnanec.firma}</div>
        [/#if]
        <div class="udaje">
            <div class="adresa">
            [#if zamestnanec.ulice?exists]
                <div>${zamestnanec.ulice}</div>
            [/#if]
            [#if zamestnanec.obecPsc?exists]
                <div><span>${zamestnanec.obecPsc}</span>
            [/#if]
            [#if zamestnanec.celaAdresa?exists]
                    ${zamestnanec.celaAdresa}</div>
            [/#if]
            </div>
            <div class="kontakty">
                [#if zamestnanec.email?exists]
                <div><i class="las la-at"></i> <span>   ${zamestnanec.email} </span></div>
                [/#if]
                [#if zamestnanec.telefon?exists]
                <div><i class="las la-phone-alt"></i> <span>${zamestnanec.telefon}</span></div>
                [/#if]
                [#if zamestnanec.web?exists]
                <div><i class="las la-globe"></i> <span>${zamestnanec.web}</span></div>
                [/#if]
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${zamestnanec.ulice?url}" width="100%" height="100%" frameborder="0"></iframe>
    </div>
</div>
</body>
</html>
