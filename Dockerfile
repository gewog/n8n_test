FROM n8nio/n8n:latest

# Keep user data on mounted persistent disk in Render.
ENV N8N_USER_FOLDER=/data/.n8n

EXPOSE 5678
