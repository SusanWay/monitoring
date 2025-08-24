# Dockerfile
FROM python:3.8-slim

# PIP_NO_CACHE_DIR=1 равно --no-cache-dir
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

# Ставим зависимости
COPY requirements.txt .
RUN pip install -r requirements.txt

# Копируем код
COPY . .

# создаём пользователя с фиксированным UID (удобнее для томов)
RUN useradd -u 1000 -m appuser && \
    mkdir -p /app/media/uploads /app/staticfiles && \
    chown -R appuser:appuser /app
USER appuser

EXPOSE 8000

# По умолчанию ничего не запускаем — команду задаст compose
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
