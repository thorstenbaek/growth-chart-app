FROM mhart/alpine-node as builder

WORKDIR /app
COPY . .

RUN npm install

WORKDIR /app

CMD ["npm", "start"]