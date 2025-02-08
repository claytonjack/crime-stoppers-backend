FROM node:22

WORKDIR /express-backend

COPY package*.json ./
RUN npm install --production

COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
