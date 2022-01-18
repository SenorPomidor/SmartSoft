package com.project.SmartSoft.mapper;

import com.project.SmartSoft.dto.CurrencyHistoryDTO;
import com.project.SmartSoft.entity.CurrencyHistoryEntity;
import org.springframework.stereotype.Component;

@Component
public class CurrencyHistoryMapper {
    public CurrencyHistoryDTO toDTO(CurrencyHistoryEntity entity) {
        CurrencyHistoryDTO dto = new CurrencyHistoryDTO();

        dto.setId(entity.getId());
        dto.setSourceCurrency(entity.getSourceCurrency());
        dto.setTargetCurrency(entity.getTargetCurrency());
        dto.setAmountReceived(entity.getAmountReceived());
        dto.setInitialAmount(entity.getInitialAmount());
        dto.setDateOperation(entity.getDateOperation());

        return dto;
    }

    public CurrencyHistoryEntity toEntity(CurrencyHistoryDTO dto) {
        CurrencyHistoryEntity entity = new CurrencyHistoryEntity();

        entity.setId(dto.getId());
        entity.setSourceCurrency(dto.getSourceCurrency());
        entity.setTargetCurrency(dto.getTargetCurrency());
        entity.setAmountReceived(dto.getAmountReceived());
        entity.setInitialAmount(dto.getInitialAmount());
        entity.setDateOperation(dto.getDateOperation());

        return entity;
    }
}
