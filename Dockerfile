# Docker-команда FROM указывает базовый образ контейнера
# Наш базовый образ - это Microsoft с предустановленным python-3.11
FROM python:3.11

# Установим переменную окружения
ENV APP_HOME /app

# Установим рабочую директорию внутри контейнера
WORKDIR $APP_HOME

# Скопируем остальные файлы в рабочую директорию контейнера
COPY . .

# Установим зависимости внутри контейнера
RUN pip install -r requirements.txt

# Обозначим порт где работает приложение внутри контейнера
EXPOSE 5000

# Запустим наше приложение внутри контейнера
ENTRYPOINT ["python", "__main__.py"]