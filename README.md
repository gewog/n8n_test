# n8n on Render

Готовый шаблон для деплоя `n8n` в Render через GitHub.

## Что уже настроено

- `Dockerfile` для запуска официального образа `n8n`.
- `render.yaml` (Blueprint) для автоматического создания web-сервиса.
- Бесплатный план `free` без платных ресурсов по умолчанию.
- Базовые env-переменные безопасности и URL.

## 1) Подготовка репозитория

1. Создай новый репозиторий на GitHub.
2. В этой папке выполни:

```bash
git init
git add .
git commit -m "chore: add n8n render deployment files"
git branch -M main
git remote add origin <YOUR_GITHUB_REPO_URL>
git push -u origin main
```

## 2) Деплой в Render

1. Зайди в Render -> **New** -> **Blueprint**.
2. Выбери твой GitHub-репозиторий.
3. Render прочитает `render.yaml` и предложит создать сервис `n8n`.
4. Подтверди создание.

## 3) Обязательные переменные

После первого создания сервиса (или сразу в форме Blueprint) проверь значения:

- `N8N_HOST` = `your-app-name.onrender.com`
- `WEBHOOK_URL` = `https://your-app-name.onrender.com/`
- `N8N_EDITOR_BASE_URL` = `https://your-app-name.onrender.com/`
- `N8N_BASIC_AUTH_USER` = твой логин
- `N8N_BASIC_AUTH_PASSWORD` = сложный пароль

`N8N_ENCRYPTION_KEY` уже генерируется автоматически из `render.yaml`, но при желании можешь зафиксировать свой.

## 4) После деплоя

- Открой URL сервиса в Render.
- Войди через Basic Auth.
- Создай owner-аккаунт n8n.
- На бесплатном плане данные могут сбрасываться при пересоздании инстанса (это ограничение без persistent disk).

## Полезно знать

- План `free` указан в `render.yaml`; для стабильного хранения данных можно перейти на платный план и добавить disk.
- Часовой пояс установлен на `Europe/Moscow`.
- Для production желательно добавить свой домен и HTTPS уже на уровне Render.
