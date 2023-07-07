FROM node:14
WORKDIR /app
RUN npm install \
  @opentelemetry/sdk-node \
  @opentelemetry/api \
  @opentelemetry/auto-instrumentations-node \
  @opentelemetry/sdk-metrics
COPY . .
RUN npm install
RUN node --require ./opentelemetry.js app.js
RUN npm install
CMD [ "node", "--require", "opentelemetry.js", "app.js" ]
EXPOSE 3000
