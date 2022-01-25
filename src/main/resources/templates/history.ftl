<#import "currencies.ftl" as c>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/static/style.css">
    </head>
    <body>
        <div class="main_history">
            <h2>История</h2>
            <form action="/history" method="post">
                <div>
                    <input type="hidden" name="initialAmount" value="1">
                    <div class="calendar_div">
                        <#if currentDate??>
                            <input class="calendar" name="dateOperation" type="date" value="${currentDate}">
                        <#else>
                            <input class="calendar" name="dateOperation" type="date" value="2022-01-01">
                        </#if>
                    </div>
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
                    <div class="input_div">
                        <input class="input" type="submit" value="Поиск" />
                    </div>
                    <div class="input_div">
                        <input class="input" type="button" value="На главную" onclick="window.location.href = '/'" />
                    </div>
                    <br>
                    <#list allCurrency>
                        <table>
                            <tr>
                                <th>Исходная валюта</th>
                                <th>Целевая валюта</th>
                                <th>Исходная сумма</th>
                                <th>Полученная сумма</th>
                                <th>Дата (гггг-мм-чч)</th>
                            </tr>
                            <#items as currency>
                                <tr class="${currency?item_parity}Row">
                                    <td>${currency.sourceCurrency}</td>
                                    <td>${currency.targetCurrency}</td>
                                    <td>${currency.initialAmount?string.computer}</td>
                                    <td>${currency.amountReceived?string.computer}</td>
                                    <td>${currency.dateOperation}</td>
                                </tr>
                            </#items>
                        </table>
                    </#list>
                </div>
            </form>
        </div>
    </body>
</html>