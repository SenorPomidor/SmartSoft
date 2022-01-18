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
            width: 300px;
            margin: 150px auto;
            text-align: center;
        }

        .form {
            border: 1px solid #555;
            padding: 5px 12px;
            width: 126px;
            font-family: sans-serif, serif;
            font-weight: 500;
            color: #3c3a3b;
        }

        .input {
            background-color: #cdcdcd;
            border: 1px solid #555;
            color: #3c3a3b;
            border-radius: 5px;
            width: 150px;
            box-shadow: inset 0 -2px #929292;
            padding: 5px 12px;
            font-family: sans-serif, serif;
            font-weight: bold;
        }

        .form_div {
            margin-bottom: 10px;
        }
    </style>
    <body>
        <div class="main">
            <h2>Конвертер валют</h2>
            <form action="/login" method="post">
                <div class="form_div">
                    <div>
                        <label>
                            <input class="form" type="text" name="login" placeholder="Логин" />
                        </label>
                    </div>
                </div>
                <div>
                    <div>
                        <label>
                            <input class="form" type="password" name="password" placeholder="Пароль" />
                        </label>
                    </div>
                </div>
                <br>
                <input class="input" type="submit" value="Войти" />
            </form>
        </div>
    </body>
</html>