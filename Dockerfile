FROM node:12-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN apk add --no-cache \
        python \
        g++ \
        make

COPY . .

RUN yarn install --production

CMD ["node", "src/index.js"]
