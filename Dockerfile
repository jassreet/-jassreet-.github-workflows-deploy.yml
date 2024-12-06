# Use a minimal base image
FROM node:18-alpine

# Set environment variables for security (non-root user)
ENV NODE_ENV=production
WORKDIR /app

# Install dependencies using package manager
COPY package*.json ./
RUN npm install --production

# Copy application code
COPY . .

# Expose port the app will listen on
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
