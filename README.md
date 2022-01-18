# SmartSoft

### Описание
При запуске приложения, программа получает список актуальных валют и их курсов с сайта ЦБРФ http://www.cbr.ru/scripts/XML_daily.asp 
и записывает их в базу данных (индентификаторы, коды, названия), а так же курсы (привязанные к валюте) на дату запроса. 
В конвертере присутствует авторизация по логину и паролю. 
Пользователь, пройдя авторизацию, попадает на главный экран, где может выбрать из какой валюты и в какую будет конвертация. 
Указывает количество переводимых средств и нажимает кнопку "Конвертировать".
После чего происходит запрос в БД на получение актуального курса на текущую дату.
Также в конвертере ведется история произведенных конвертаций.

### SQL-скрипт создания баз данных
```sql
    CREATE TABLE person (
        id INT PRIMARY KEY NOT NULL DEFAULT NEXTVAL('hibernate_sequence'),
        login VARCHAR(30) NOT NULL,
        password VARCHAR(30) NOT NULL
    );
```

```sql
    CREATE TABLE history (
        id INT PRIMARY KEY NOT NULL DEFAULT NEXTVAL('sequence_history'),
        source_currency VARCHAR(255) NOT NULL,
        target_currency VARCHAR(255) NOT NULL,
        initial_amount FLOAT NOT NULL,
        amount_received FLOAT NOT NULL,
        date_operation VARCHAR(255)
    );
```

### Команды для сборки и запуска
```mvn clean compile```
<br/>
```mvn spring-boot:run```


### Данные для авторизации
**Логин** - admin
<br/>
**Пароль** - admin
