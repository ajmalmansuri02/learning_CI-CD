# # Example Dockerfile for a Node.js app
# FROM node:18-alpine

# WORKDIR /app

# # Copy package.json first to leverage caching
# COPY package*.json ./
# RUN npm install

# # Copy all files
# COPY . .

# # Build or start your app
# CMD ["node", "index.js"]

# Minimal Dockerfile
# FROM node:18-alpine

# WORKDIR /app

# # Just create a simple file so Docker build works
# RUN echo "console.log('Hello from Cloud Run');" > index.js

# # Command to run the app
# CMD ["node", "index.js"]


# Dockerfile
FROM node:18-alpine

WORKDIR /app

# Minimal server
RUN echo "const http = require('http'); const port = process.env.PORT || 8080; http.createServer((req,res)=>res.end('Hello Cloud Run')).listen(port);" > index.js

CMD ["node", "index.js"]
