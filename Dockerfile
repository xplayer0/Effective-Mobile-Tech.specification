FROM python:3.11-alpine

WORKDIR /app
COPY app.py .

# Запуск не от root
RUN adduser -D appuser
USER appuser

EXPOSE 8080

CMD ["python", "app.py"]
