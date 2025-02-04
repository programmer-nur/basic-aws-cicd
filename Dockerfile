FROM node:20-alpine

# Create app directory
WORKDIR /app

COPY . .

RUN npm install

EXPOSE 5000

CMD ["node", "dist/index.js"]