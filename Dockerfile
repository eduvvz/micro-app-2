FROM node:12.19.0 as build

WORKDIR /app

RUN npm install --global pm2

COPY . .

RUN npm ci --silent
RUN npm run build

EXPOSE 3000

USER node

CMD [ "pm2-runtime", "npm", "--", "start" ]
