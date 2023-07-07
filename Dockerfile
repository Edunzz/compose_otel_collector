FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install \
  @opentelemetry/api \
  @opentelemetry/auto-instrumentations-node \
  @opentelemetry/sdk-trace-base \
  @opentelemetry/sdk-node \
  @opentelemetry/exporter-trace-otlp-proto \
  @opentelemetry/resources \
  @opentelemetry/semantic-conventions \
  properties-reader
RUN npm install
COPY . .
CMD [ "node", "--require", "opentelemetry.js", "app.js" ]
EXPOSE 3000
