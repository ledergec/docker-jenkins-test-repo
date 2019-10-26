FROM gradle:4.7.0-jdk8-alpine AS build

USER root
RUN apk add --no-cache bash 
USER gradle

WORKDIR /home/gradle/testrepo

ENTRYPOINT ["gradle","clean","test"]