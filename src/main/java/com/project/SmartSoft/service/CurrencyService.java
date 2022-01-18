package com.project.SmartSoft.service;

import com.project.SmartSoft.client.RatesClient;
import com.project.SmartSoft.dto.CurrencyHistoryDTO;
import com.project.SmartSoft.dto.CurrencyRatesDTO;
import com.project.SmartSoft.entity.CurrencyHistoryEntity;
import com.project.SmartSoft.mapper.CurrencyHistoryMapper;
import com.project.SmartSoft.repository.CurrencyRepository;
import com.project.SmartSoft.util.ControllerUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service
public class CurrencyService {
    private final CurrencyRepository currencyRepository;

    private final CurrencyHistoryMapper currencyHistoryMapper;

    private final RatesClient ratesClient;

    @Autowired
    public CurrencyService(
            CurrencyRepository currencyRepository,
            CurrencyHistoryMapper currencyHistoryMapper,
            RatesClient ratesClient) {
        this.currencyRepository = currencyRepository;
        this.currencyHistoryMapper = currencyHistoryMapper;
        this.ratesClient = ratesClient;
    }

    @Transactional
    public CurrencyRatesDTO unMarshallerMethod() {

        return ratesClient.getRates();
    }

    @Transactional
    public String currencyConvert(
            CurrencyHistoryDTO historyDTO,
            BindingResult bindingResult,
            Model model
    ) {
        if (bindingResult.hasErrors()) {
            Map<String, String> errors = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errors);

            return "main-page";
        }

        CurrencyRatesDTO dto = unMarshallerMethod();
        List<Double> list = new ArrayList<>();
        double source = 0, target = 0;

        for (int i = 0; i < dto.getValute().size(); i++) {
            list.add(Double.parseDouble(dto.getValute().get(i).getValue().replace(',', '.')));
        }

        for (int i = 0; i < dto.getValute().size(); i++) {
            if (dto.getValute().get(i).getCharCode().equals(historyDTO.getSourceCurrency())) {
                source = list.get(i) * historyDTO.getInitialAmount() / dto.getValute().get(i).getNominal();
            }

            if (dto.getValute().get(i).getCharCode().equals(historyDTO.getTargetCurrency())) {
                target = list.get(i) / dto.getValute().get(i).getNominal();
            }
        }

        if (historyDTO.getTargetCurrency().equals("RUB")) {
            target = 1;
        }

        if (historyDTO.getSourceCurrency().equals("RUB")) {
            source = 1 * historyDTO.getInitialAmount();
        }

        double amountReceived = Math.ceil(source / target * Math.pow(10, 3)) / Math.pow(10, 3);

        if (findHistoryByParams(historyDTO.getSourceCurrency(), historyDTO.getTargetCurrency(), historyDTO.getInitialAmount(), LocalDate.now().toString())) {
            CurrencyHistoryEntity currencyHistory = new CurrencyHistoryEntity();

            currencyHistory.setSourceCurrency(historyDTO.getSourceCurrency());
            currencyHistory.setTargetCurrency(historyDTO.getTargetCurrency());
            currencyHistory.setInitialAmount(historyDTO.getInitialAmount());
            currencyHistory.setAmountReceived(amountReceived);
            currencyHistory.setDateOperation(LocalDate.now().toString());

            saveCurrencyHistory(currencyHistory);
        }

        model.addAttribute("source" + historyDTO.getSourceCurrency(), historyDTO.getSourceCurrency());
        model.addAttribute("target" + historyDTO.getTargetCurrency(), historyDTO.getTargetCurrency());

        model.addAttribute("initialAmount", historyDTO.getInitialAmount());
        model.addAttribute("amountReceived", amountReceived);

        return "main-page";
    }

    @Transactional
    public CurrencyHistoryEntity saveCurrencyHistory(CurrencyHistoryEntity currencyHistory) {
        return currencyRepository.save(currencyHistory);
    }

    @Transactional
    public boolean findHistoryByParams(String sourceCurrency, String targetCurrency, Double initialAmount, String dateOperation) {
        List<CurrencyHistoryEntity> currencyHistoryList = currencyRepository.findHistoryByParams(
                sourceCurrency, targetCurrency, initialAmount, dateOperation
        );

        return currencyHistoryList.isEmpty();
    }

    @Transactional
    public List<CurrencyHistoryEntity> getAllHistory() {
        return currencyRepository.getAllHistory();
    }

    @Transactional
    public List<CurrencyHistoryEntity> getSearchingHistory(String sourceCurrency, String targetCurrency, String dateOperation) {
        return currencyRepository.findSearchingHistory(sourceCurrency, targetCurrency, dateOperation);
    }

    public String currencyHistory(CurrencyHistoryDTO historyDTO, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Map<String, String> errors = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errors);

            return "history";
        }

        CurrencyHistoryEntity currencyHistory = currencyHistoryMapper.toEntity(historyDTO);

        List<CurrencyHistoryEntity> currencyList = getSearchingHistory(historyDTO.getSourceCurrency(), historyDTO.getTargetCurrency(), currencyHistory.getDateOperation());

        List<CurrencyHistoryDTO> currencyHistoryDTOS = currencyList.stream()
                .map(currencyHistoryMapper::toDTO)
                .collect(Collectors.toList());

        model.addAttribute("allCurrency", currencyHistoryDTOS);

        model.addAttribute("source" + historyDTO.getSourceCurrency(), historyDTO.getSourceCurrency());
        model.addAttribute("target" + historyDTO.getTargetCurrency(), historyDTO.getTargetCurrency());

        System.out.println(historyDTO.getDateOperation());

        model.addAttribute("currentDate", historyDTO.getDateOperation());

        return "history";
    }

    @Transactional
    public String currencyHistory(Model model) {
        List<CurrencyHistoryEntity> currencyList = getAllHistory();

        List<CurrencyHistoryDTO> currencyHistoryDTOS = currencyList.stream()
                .map(currencyHistoryMapper::toDTO)
                .collect(Collectors.toList());

        model.addAttribute("allCurrency", currencyHistoryDTOS);

        return "history";
    }
}
