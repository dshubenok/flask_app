# Берем нужный базовый образ
FROM python:3.8-alpine
# Копируем все файлы из текущей директории в /app контейнера
COPY ./ /app
# Устанавливаем все зависимости
RUN pip install -r /app/requirements.txt --no-cache-dir
# Говорим контейнеру какой порт слушай
EXPOSE 5000
# Запуск нашего приложения при старте контейнера
CMD python /app/hello.py
