# Example Dockerfile for a Node.js app
FROM node:18-alpine

WORKDIR /app

# Copy package.json first to leverage caching
COPY package*.json ./
RUN npm install

# Copy all files
COPY . .

# Build or start your app
CMD ["node", "index.js"]
