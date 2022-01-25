<#import "currencies.ftl" as c>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/static/style.css">
    </head>
    <body>
        <div class="main_page">
            <h2>Конвертер</h2>
            <form action="/currencyConvert" method="post">
                <div>
                    <div class="form_div_select">
                        <select class="form_select" name="sourceCurrency">
                            <@c.currency/>
                        </select>
                    </div>
                    <div class="form_div_select">
                        <select class="form_select" name="targetCurrency">
                            <@c.currency/>
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
                    <input class="input" type="submit" value="Конвертировать" />
                    <br>
                    <input class="input" type="button" value="История" onclick="window.location.href = 'history'" />
                </div>
            </form>
        </div>
    </body>
</html>