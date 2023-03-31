FROM node:16-slim
RUN apt-get update
RUN apt-get install -y openssl

WORKDIR /app

COPY . .

RUN yarn 

CMD yarn dev