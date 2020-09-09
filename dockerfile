FROM mhart/alpine-node as builder

WORKDIR /app
COPY . .

RUN npm install

COPY ./dips-fix/fhir-client.js ./node_modules/fhirclient/build/

WORKDIR /app

CMD ["npm", "start"]