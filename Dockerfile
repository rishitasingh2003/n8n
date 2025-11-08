FROM n8nio/n8n:latest

# Set timezone and environment
ENV GENERIC_TIMEZONE=Asia/Kolkata
ENV N8N_ENCRYPTION_KEY=randomsecurekey123
ENV WEBHOOK_URL=https://agrisahay-n8n.onrender.com/
ENV NODE_ENV=production

# Ensure the correct home directory for n8n
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch back to non-root user for security
USER node

EXPOSE 5678
CMD ["n8n"]
