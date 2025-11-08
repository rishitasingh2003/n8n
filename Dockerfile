# Use the official n8n image
FROM n8nio/n8n:latest

# Switch to root to set permissions
USER root

# Create and fix permissions for n8n folder
RUN mkdir -p /home/node/.n8n && chmod -R 777 /home/node/.n8n

# Set environment variables
ENV GENERIC_TIMEZONE=Asia/Kolkata
ENV N8N_ENCRYPTION_KEY=randomsecurekey123
ENV WEBHOOK_URL=https://agrisahay-n8n.onrender.com/
ENV NODE_ENV=production

# Expose the default n8n port
EXPOSE 5678

# Switch back to node user
USER node

# Start n8n
CMD ["n8n"]
