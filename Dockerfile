FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install \
  @opentelemetry/sdk-node \
  @opentelemetry/api \
  @opentelemetry/auto-instrumentations-node \
  @opentelemetry/sdk-metrics
RUN npm install
COPY . .
CMD [ "node", "--require", "opentelemetry.js", "app.js" ]
EXPOSE 3000
