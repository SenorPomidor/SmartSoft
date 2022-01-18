package com.project.SmartSoft.dto;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import java.util.List;

@XmlRootElement(name = "ValCurs")
public class CurrencyRatesDTO {
    @XmlAttribute(name = "name")
    private String name;
    private String date;
    private List<CurrencyDTO> valute;

    public void setName(String name) {
        this.name = name;
    }

    @XmlAttribute(name = "Date")
    public void setDate(String date) {
        this.date = date;
    }

    @XmlElement(name = "Valute")
    public void setValute(List<CurrencyDTO> valute) {
        this.valute = valute;
    }

    public List<CurrencyDTO> getValute() {
        return valute;
    }

    public String getDate() {
        return date;
    }

    @Override
    public String toString() {
        return "CurrencyRatesDTO{" +
                "name='" + name + '\'' +
                ", date='" + date + '\'' +
                ", valute=" + valute +
                '}';
    }
}
