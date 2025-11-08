FROM n8nio/n8n:latest

ENV GENERIC_TIMEZONE=Asia/Kolkata
ENV N8N_ENCRYPTION_KEY=randomsecurekey123
ENV WEBHOOK_URL=https://agrisahay-n8n.onrender.com/

EXPOSE 5678
CMD ["n8n"]
