FROM node:16.13.0

RUN apt update && apt upgrade -y && apt install -qqy wget

RUN mkdir -p /project
WORKDIR /project
COPY ./package.json /project
COPY ./package-lock.json /project
RUN npm i
COPY ./ /project
#ARG SERVER_TYPE
#ENV SERVER_TYPE=$SERVER_TYPE
RUN npm run build
