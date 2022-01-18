<!DOCTYPE html>
<html>
    <style>
        body {
            background-color: #e0e0e0;
        }

        h2 {
            color: #3c3a3b;
            font-family: sans-serif, serif;
        }

        .main {
            width: 500px;
            margin: 100px auto;
            text-align: center;
        }

        .form_select {
            border: 1px solid #555;
            width: 170px;
            font-family: sans-serif, serif;
        }

        .form_input {
            border: 1px solid #555;
            padding: 5px 12px;
            width: 144px;
            font-family: sans-serif, serif;
            font-weight: 500;
            color: #3c3a3b;
        }

        .input {
            background-color: #cdcdcd;
            border: 1px solid #555;
            color: #3c3a3b;
            border-radius: 5px;
            width: 140px;
            box-shadow: inset 0 -2px #929292;
            padding: 5px 12px;
            font-family: sans-serif, serif;
            font-weight: bold;
            margin-top: 15px;
        }

        option {
            padding: 5px 3px;
            font-weight: 500;
            font-family: sans-serif, serif;
            color: #3c3a3b;
        }

        .form_div_select {
            margin: 5px 20px;
            display: inline-block;
        }

        .form_div_input {
            margin: 5px 20px;
            display: inline-block;
        }
    </style>
    <body>
        <div class="main">
            <h2>Конвертер</h2>
            <form action="/currencyConvert" method="post">
                <div>
                    <div class="form_div_select">
                        <select class="form_select" name="sourceCurrency">
                            <option value="RUB">RUB (Российский рубль)</option>
                            <#if sourceAUD??>
                                <option value="AUD" selected>AUD (Австралийский доллар)</option>
                            <#else>
                                <option value="AUD">AUD (Австралийский доллар)</option>
                            </#if>
                            <#if sourceAZN??>
                                <option value="AZN" selected>AZN (Азербайджанский манат)</option>
                            <#else>
                                <option value="AZN">AZN (Азербайджанский манат)</option>
                            </#if>
                            <#if sourceGBP??>
                                <option value="GBP" selected>GBP (Фунт стерлингов Соединенного королевства)</option>
                            <#else>
                                <option value="GBP">GBP (Фунт стерлингов Соединенного королевства)</option>
                            </#if>
                            <#if sourceAMD??>
                                <option value="AMD" selected>AMD (Армянских драмов)</option>
                            <#else>
                                <option value="AMD">AMD (Армянских драмов)</option>
                            </#if>
                            <#if sourceBYN??>
                                <option value="BYN" selected>BYN (Белорусский рубль)</option>
                            <#else>
                                <option value="BYN">BYN (Белорусский рубль)</option>
                            </#if>
                            <#if sourceBGN??>
                                <option value="BGN" selected>BGN (Болгарский лев)</option>
                            <#else>
                                <option value="BGN">BGN (Болгарский лев)</option>
                            </#if>
                            <#if sourceBRL??>
                                <option value="BRL" selected>BRL (Бразильский реал)</option>
                            <#else>
                                <option value="BRL">BRL (Бразильский реал)</option>
                            </#if>
                            <#if sourceHUF??>
                                <option value="HUF" selected>HUF (Венгерских форинтов)</option>
                            <#else>
                                <option value="HUF">HUF (Венгерских форинтов)</option>
                            </#if>
                            <#if sourceHKD??>
                                <option value="HKD" selected>HKD (Гонконгских долларов)</option>
                            <#else>
                                <option value="HKD">HKD (Гонконгских долларов)</option>
                            </#if>
                            <#if sourceDKK??>
                                <option value="DKK" selected>DKK (Датская крона)</option>
                            <#else>
                                <option value="DKK">DKK (Датская крона)</option>
                            </#if>
                            <#if sourceUSD??>
                                <option value="USD" selected>USD (Доллар США)</option>
                            <#else>
                                <option value="USD">USD (Доллар США)</option>
                            </#if>
                            <#if sourceEUR??>
                                <option value="EUR" selected>EUR (Евро)</option>
                            <#else>
                                <option value="EUR">EUR (Евро)</option>
                            </#if>
                            <#if sourceINR??>
                                <option value="INR" selected>INR (Индийских рупий)</option>
                            <#else>
                                <option value="INR">INR (Индийских рупий)</option>
                            </#if>
                            <#if sourceKZT??>
                                <option value="KZT" selected>KZT (Казахстанских тенге)</option>
                            <#else>
                                <option value="KZT">KZT (Казахстанских тенге)</option>
                            </#if>
                            <#if sourceCAD??>
                                <option value="CAD" selected>CAD (Канадский доллар)</option>
                            <#else>
                                <option value="CAD">CAD (Канадский доллар)</option>
                            </#if>
                            <#if sourceKGS??>
                                <option value="KGS" selected>KGS (Киргизских сомов)</option>
                            <#else>
                                <option value="KGS">KGS (Киргизских сомов)</option>
                            </#if>
                            <#if sourceCNY??>
                                <option value="CNY" selected>CNY (Китайский юань)</option>
                            <#else>
                                <option value="CNY">CNY (Китайский юань)</option>
                            </#if>
                            <#if sourceMDL??>
                                <option value="MDL" selected>MDL (Молдавских леев)</option>
                            <#else>
                                <option value="MDL">MDL (Молдавских леев)</option>
                            </#if>
                            <#if sourceNOK??>
                                <option value="NOK" selected>NOK (Норвежских крон)</option>
                            <#else>
                                <option value="NOK">NOK (Норвежских крон)</option>
                            </#if>
                            <#if sourcePLN??>
                                <option value="PLN" selected>PLN (Польский злотый)</option>
                            <#else>
                                <option value="PLN">PLN (Польский злотый)</option>
                            </#if>
                            <#if sourceRON??>
                                <option value="RON" selected>RON (Румынский лей)</option>
                            <#else>
                                <option value="RON">RON (Румынский лей)</option>
                            </#if>
                            <#if sourceXDR??>
                                <option value="XDR" selected>XDR (СДР (специальные права заимствования))</option>
                            <#else>
                                <option value="XDR">XDR (СДР (специальные права заимствования))</option>
                            </#if>
                            <#if sourceSGD??>
                                <option value="SGD" selected>SGD (Сингапурский доллар)</option>
                            <#else>
                                <option value="SGD">SGD (Сингапурский доллар)</option>
                            </#if>
                            <#if sourceTJS??>
                                <option value="TJS" selected>TJS (аджикских сомони)</option>
                            <#else>
                                <option value="TJS">TJS (аджикских сомони)</option>
                            </#if>
                            <#if sourceTRY??>
                                <option value="TRY" selected>TRY (Турецких лир)</option>
                            <#else>
                                <option value="TRY">TRY (Турецких лир)</option>
                            </#if>
                            <#if sourceTMT??>
                                <option value="TMT" selected>TMT (Новый туркменский манат)</option>
                            <#else>
                                <option value="TMT">TMT (Новый туркменский манат)</option>
                            </#if>
                            <#if sourceUZS??>
                                <option value="UZS" selected>UZS (Узбекских сумов)</option>
                            <#else>
                                <option value="UZS">UZS (Узбекских сумов)</option>
                            </#if>
                            <#if sourceUAH??>
                                <option value="UAH" selected>UAH (Украинских гривен)</option>
                            <#else>
                                <option value="UAH">UAH (Украинских гривен)</option>
                            </#if>
                            <#if sourceCZK??>
                                <option value="CZK" selected>CZK (Чешских крон)</option>
                            <#else>
                                <option value="CZK">CZK (Чешских крон)</option>
                            </#if>
                            <#if sourceSEK??>
                                <option value="SEK" selected>SEK (Шведских крон)</option>
                            <#else>
                                <option value="SEK">SEK (Шведских крон)</option>
                            </#if>
                            <#if sourceCHF??>
                                <option value="CHF" selected>CHF (Швейцарский франк)</option>
                            <#else>
                                <option value="CHF">CHF (Швейцарский франк)</option>
                            </#if>
                            <#if sourceZAR??>
                                <option value="ZAR" selected>ZAR (Южноафриканских рэндов)</option>
                            <#else>
                                <option value="ZAR">ZAR (Южноафриканских рэндов)</option>
                            </#if>
                            <#if sourceKRW??>
                                <option value="KRW" selected>KRW (Вон Республики Корея)</option>
                            <#else>
                                <option value="KRW">KRW (Вон Республики Корея)</option>
                            </#if>
                            <#if sourceJPY??>
                                <option value="JPY" selected>JPY (Японских иен)</option>
                            <#else>
                                <option value="JPY">JPY (Японских иен)</option>
                            </#if>
                        </select>
                    </div>
                    <div class="form_div_select">
                        <select class="form_select" name="targetCurrency">
                            <option value="RUB">RUB (Российский рубль)</option>
                            <#if targetAUD??>
                                <option value="AUD" selected>AUD (Австралийский доллар)</option>
                            <#else>
                                <option value="AUD">AUD (Австралийский доллар)</option>
                            </#if>
                            <#if targetAZN??>
                                <option value="AZN" selected>AZN (Азербайджанский манат)</option>
                            <#else>
                                <option value="AZN">AZN (Азербайджанский манат)</option>
                            </#if>
                            <#if targetGBP??>
                                <option value="GBP" selected>GBP (Фунт стерлингов Соединенного королевства)</option>
                            <#else>
                                <option value="GBP">GBP (Фунт стерлингов Соединенного королевства)</option>
                            </#if>
                            <#if targetAMD??>
                                <option value="AMD" selected>AMD (Армянских драмов)</option>
                            <#else>
                                <option value="AMD">AMD (Армянских драмов)</option>
                            </#if>
                            <#if targetBYN??>
                                <option value="BYN" selected>BYN (Белорусский рубль)</option>
                            <#else>
                                <option value="BYN">BYN (Белорусский рубль)</option>
                            </#if>
                            <#if targetBGN??>
                                <option value="BGN" selected>BGN (Болгарский лев)</option>
                            <#else>
                                <option value="BGN">BGN (Болгарский лев)</option>
                            </#if>
                            <#if targetBRL??>
                                <option value="BRL" selected>BRL (Бразильский реал)</option>
                            <#else>
                                <option value="BRL">BRL (Бразильский реал)</option>
                            </#if>
                            <#if targetHUF??>
                                <option value="HUF" selected>HUF (Венгерских форинтов)</option>
                            <#else>
                                <option value="HUF">HUF (Венгерских форинтов)</option>
                            </#if>
                            <#if targetHKD??>
                                <option value="HKD" selected>HKD (Гонконгских долларов)</option>
                            <#else>
                                <option value="HKD">HKD (Гонконгских долларов)</option>
                            </#if>
                            <#if targetDKK??>
                                <option value="DKK" selected>DKK (Датская крона)</option>
                            <#else>
                                <option value="DKK">DKK (Датская крона)</option>
                            </#if>
                            <#if targetUSD??>
                                <option value="USD" selected>USD (Доллар США)</option>
                            <#else>
                                <option value="USD">USD (Доллар США)</option>
                            </#if>
                            <#if targetEUR??>
                                <option value="EUR" selected>EUR (Евро)</option>
                            <#else>
                                <option value="EUR">EUR (Евро)</option>
                            </#if>
                            <#if targetINR??>
                                <option value="INR" selected>INR (Индийских рупий)</option>
                            <#else>
                                <option value="INR">INR (Индийских рупий)</option>
                            </#if>
                            <#if targetKZT??>
                                <option value="KZT" selected>KZT (Казахстанских тенге)</option>
                            <#else>
                                <option value="KZT">KZT (Казахстанских тенге)</option>
                            </#if>
                            <#if targetCAD??>
                                <option value="CAD" selected>CAD (Канадский доллар)</option>
                            <#else>
                                <option value="CAD">CAD (Канадский доллар)</option>
                            </#if>
                            <#if targetKGS??>
                                <option value="KGS" selected>KGS (Киргизских сомов)</option>
                            <#else>
                                <option value="KGS">KGS (Киргизских сомов)</option>
                            </#if>
                            <#if targetCNY??>
                                <option value="CNY" selected>CNY (Китайский юань)</option>
                            <#else>
                                <option value="CNY">CNY (Китайский юань)</option>
                            </#if>
                            <#if targetMDL??>
                                <option value="MDL" selected>MDL (Молдавских леев)</option>
                            <#else>
                                <option value="MDL">MDL (Молдавских леев)</option>
                            </#if>
                            <#if targetNOK??>
                                <option value="NOK" selected>NOK (Норвежских крон)</option>
                            <#else>
                                <option value="NOK">NOK (Норвежских крон)</option>
                            </#if>
                            <#if targetPLN??>
                                <option value="PLN" selected>PLN (Польский злотый)</option>
                            <#else>
                                <option value="PLN">PLN (Польский злотый)</option>
                            </#if>
                            <#if targetRON??>
                                <option value="RON" selected>RON (Румынский лей)</option>
                            <#else>
                                <option value="RON">RON (Румынский лей)</option>
                            </#if>
                            <#if targetXDR??>
                                <option value="XDR" selected>XDR (СДР (специальные права заимствования))</option>
                            <#else>
                                <option value="XDR">XDR (СДР (специальные права заимствования))</option>
                            </#if>
                            <#if targetSGD??>
                                <option value="SGD" selected>SGD (Сингапурский доллар)</option>
                            <#else>
                                <option value="SGD">SGD (Сингапурский доллар)</option>
                            </#if>
                            <#if targetTJS??>
                                <option value="TJS" selected>TJS (аджикских сомони)</option>
                            <#else>
                                <option value="TJS">TJS (аджикских сомони)</option>
                            </#if>
                            <#if targetTRY??>
                                <option value="TRY" selected>TRY (Турецких лир)</option>
                            <#else>
                                <option value="TRY">TRY (Турецких лир)</option>
                            </#if>
                            <#if targetTMT??>
                                <option value="TMT" selected>TMT (Новый туркменский манат)</option>
                            <#else>
                                <option value="TMT">TMT (Новый туркменский манат)</option>
                            </#if>
                            <#if targetUZS??>
                                <option value="UZS" selected>UZS (Узбекских сумов)</option>
                            <#else>
                                <option value="UZS">UZS (Узбекских сумов)</option>
                            </#if>
                            <#if targetUAH??>
                                <option value="UAH" selected>UAH (Украинских гривен)</option>
                            <#else>
                                <option value="UAH">UAH (Украинских гривен)</option>
                            </#if>
                            <#if targetCZK??>
                                <option value="CZK" selected>CZK (Чешских крон)</option>
                            <#else>
                                <option value="CZK">CZK (Чешских крон)</option>
                            </#if>
                            <#if targetSEK??>
                                <option value="SEK" selected>SEK (Шведских крон)</option>
                            <#else>
                                <option value="SEK">SEK (Шведских крон)</option>
                            </#if>
                            <#if targetCHF??>
                                <option value="CHF" selected>CHF (Швейцарский франк)</option>
                            <#else>
                                <option value="CHF">CHF (Швейцарский франк)</option>
                            </#if>
                            <#if targetZAR??>
                                <option value="ZAR" selected>ZAR (Южноафриканских рэндов)</option>
                            <#else>
                                <option value="ZAR">ZAR (Южноафриканских рэндов)</option>
                            </#if>
                            <#if targetKRW??>
                                <option value="KRW" selected>KRW (Вон Республики Корея)</option>
                            <#else>
                                <option value="KRW">KRW (Вон Республики Корея)</option>
                            </#if>
                            <#if targetJPY??>
                                <option value="JPY" selected>JPY (Японских иен)</option>
                            <#else>
                                <option value="JPY">JPY (Японских иен)</option>
                            </#if>
                        </select>
                    </div>
                    <br>
                    <div class="form_div_input">
                        <#if !amountReceived??>
                            <input class="form_input" type="number" name="initialAmount" placeholder="Исходная сумма" />
                        <#else>
                            <input class="form_input" type="number" name="initialAmount" value="${initialAmount?string.computer}" placeholder="Исходная сумма" />
                        </#if>
                    </div>
                    <div class="form_div_input">
                        <#if !amountReceived??>
                            <input class="form_input" type="text" name="amountReceived" value="0" readonly placeholder="Полученная сумма" />
                        <#else>
                            <input class="form_input" type="text" name="amountReceived" value="${amountReceived?string.computer}" readonly placeholder="Полученная сумма" />
                        </#if>
                    </div>
                    <br>
<#--                    <#if !initialAmount??>-->
                    <input class="input" type="submit" value="Конвертировать" />
<#--                    <#else>-->
<#--                        <input class="input" type="button" value="На главную" onclick="window.location.href = '/'" />-->
<#--                    </#if>-->
                    <br>
                    <input class="input" type="button" value="История" onclick="window.location.href = 'history'" />
                </div>
            </form>
        </div>
    </body>
</html>