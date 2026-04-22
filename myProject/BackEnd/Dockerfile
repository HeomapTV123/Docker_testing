FROM node:20

WORKDIR /app

COPY BackEnd/package*.json ./BackEnd/
WORKDIR /app/BackEnd
RUN npm install

WORKDIR /app
COPY . .

WORKDIR /app/BackEnd

EXPOSE 5000

CMD ["node", "server.js"]