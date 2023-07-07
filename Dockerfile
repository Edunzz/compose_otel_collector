FROM node:14
WORKDIR /app
COPY . .
RUN npm install
CMD [ "node", "--require", "opentelemetry.js", "app.js" ]
EXPOSE 3000
