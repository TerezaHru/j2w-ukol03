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
[#list zamestnanci]
<div class="seznam">

    <a href="/detail">
        [#items as vizitka]
        <div class="vizitka">
            [#if vizitka.jmeno?exists]
            <div class="jmeno">${vizitka.jmeno}</div>
            [/#if]
            [#if vizitka.firma?exists]
            <div class="firma">${vizitka.firma}</div>
            [/#if]
            <div class="udaje">
                <div class="adresa">
                    [#if vizitka.ulice?exists]
                    <div>${vizitka.ulice}</div>
                    [/#if]
                    [#if vizitka.obecPsc?exists]
                    <div><span>${vizitka.obecPsc}</span>
                        [/#if]
                        [#if vizitka.celaAdresa?exists]
                        ${vizitka.celaAdresa}</div>
                        [/#if]
                </div>
                <div class="kontakty">
                    [#if vizitka.email?exists]
                        <div><i class="las la-at"></i> <span>${vizitka.email}</span></div>
                    [/#if]
                    [#if vizitka.telefon?exists]
                    <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span></div>
                     [/#if]
                    [#if vizitka.web?exists]
                    <div><i class="las la-globe"></i> <span>${vizitka.web}</span></div>
                    [/#if]
                </div>
            </div>
        </div>
        [/#items]
    </a>




</div>
[/#list]
</body>
</html>
