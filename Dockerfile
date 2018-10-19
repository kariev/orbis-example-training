FROM node:10.10.0-slim
RUN mkdir app
RUN mkdir resources
COPY package.json /app
COPY resources /app/resources
WORKDIR /app
RUN npm install
