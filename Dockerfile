FROM node:18-alpine

RUN apk add --no-cache python3 g++ make

WORKDIR /app

COPY . .

RUN yarn install --production

EXPOSE 3000

CMD ["node", "src/index.js"]
