package com.project.SmartSoft.dto;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

public class CurrencyHistoryDTO {
    private Long id;
    private String sourceCurrency;
    private String targetCurrency;
    @NotNull(message = "Name can't be empty!")
    @Min(value = 1, message = "Initial amount should be more than 100!")
    private Double initialAmount;
    private Double amountReceived;
    private String dateOperation;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSourceCurrency() {
        return sourceCurrency;
    }

    public void setSourceCurrency(String sourceCurrency) {
        this.sourceCurrency = sourceCurrency;
    }

    public String getTargetCurrency() {
        return targetCurrency;
    }

    public void setTargetCurrency(String targetCurrency) {
        this.targetCurrency = targetCurrency;
    }

    public Double getInitialAmount() {
        return initialAmount;
    }

    public void setInitialAmount(Double initialAmount) {
        this.initialAmount = initialAmount;
    }

    public Double getAmountReceived() {
        return amountReceived;
    }

    public void setAmountReceived(Double amountReceived) {
        this.amountReceived = amountReceived;
    }

    public String getDateOperation() {
        return dateOperation;
    }

    public void setDateOperation(String dateOperation) {
        this.dateOperation = dateOperation;
    }
}
