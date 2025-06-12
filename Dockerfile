FROM node:18-alpine AS build
WORKDIR /app

COPY . .
# Serve Application using Nginx Server
FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build  /app /usr/share/nginx/html