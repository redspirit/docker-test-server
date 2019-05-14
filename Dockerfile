
FROM node:10-alpine
RUN mkdir -p /home/app/node_modules && chown -R node:node /home/app
WORKDIR /home/app
COPY . .

RUN npm install

EXPOSE 8080
CMD ["node", "app.js"]