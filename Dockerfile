FROM node:16-slim
WORKDIR /app

COPY package*.json ./

ENV NODE_ENV=production
RUN npm install --omit=dev

COPY . ./

CMD [ "npm", "start" ]
