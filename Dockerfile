FROM node:20-alpine

# Create app directory
WORKDIR /app

COPY . .

RUN yarn install

EXPOSE 5000

# Fix: Correct syntax for making script executable
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "sh", "/entrypoint.sh" ]