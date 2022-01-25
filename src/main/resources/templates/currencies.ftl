<#macro currency>
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
</#macro>