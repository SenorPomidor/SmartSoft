package com.project.SmartSoft.repository;

import com.project.SmartSoft.entity.CurrencyHistoryEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CurrencyRepository extends CrudRepository<CurrencyHistoryEntity, Long> {
    @Query("from CurrencyHistoryEntity where sourceCurrency = :sourceCurrency and " +
            "targetCurrency = :targetCurrency and dateOperation = :dateOperation and initialAmount = :initialAmount")
    List<CurrencyHistoryEntity> findHistoryByParams(String sourceCurrency, String targetCurrency, Double initialAmount, String dateOperation);

    @Query("from CurrencyHistoryEntity order by id desc")
    List<CurrencyHistoryEntity> getAllHistory();

    @Query("from CurrencyHistoryEntity where sourceCurrency = :sourceCurrency and " +
            "targetCurrency = :targetCurrency and dateOperation = :dateOperation")
    List<CurrencyHistoryEntity> findSearchingHistory(String sourceCurrency, String targetCurrency, String dateOperation);
}
