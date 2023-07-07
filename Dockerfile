FROM node:14
WORKDIR /app
COPY . .
RUN npm install
RUN npm install @opentelemetry/sdk-node @opentelemetry/api @opentelemetry/auto-instrumentations-node @opentelemetry/sdk-metrics
CMD [ "node", "--require", "./opentelemetry.js", "app.js" ]
EXPOSE 3000
