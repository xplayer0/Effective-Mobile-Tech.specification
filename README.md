# Effective-Mobile-Tech.specification
A test assignment for a DevOps position


## Как запустить проект

1. Убедитесь, что у вас установлены:
   - Docker
   - Docker Compose

2. Клонируйте репозиторий (или создайте структуру вручную).

3. Перейдите в директорию проекта и выполните:
   ```bash
   docker-compose up -d

#Как работает проект:

Backend (Python http.server):
Слушает порт 8080 внутри Docker-сети.
Не публикует порт наружу.
Отвечает на запрос / текстом Hello from Effective Mobile!.

Nginx:
Принимает HTTP-запросы на порту 80 (проброшен на хост).
Проксирует запросы к backend:8080 через внутреннюю сеть.

Передаёт заголовки:
Host
X-Real-IP
X-Forwarded-For

Сеть Docker:
Контейнеры объединены в сеть app-network.
Взаимодействие происходит по именам сервисов (backend, nginx).

Схема взаимодействия:
User → [Host:80] → Nginx → [app-network] → Backend:8080

Использованные технологии:
Python 3.11,
Nginx 1.25,
Docker,
Docker Compose,

---

Остановка:
bash
docker-compose down
