FROM node:20.10.0-slim

WORKDIR /app

COPY package*.json .
RUN npm install --only=production

COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm","start"]