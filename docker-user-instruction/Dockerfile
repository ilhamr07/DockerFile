#referensi docker image dari docker hub
FROM golang:1.18-alpine

#untuk menentukan home folder docker image
#WORKDIR /app

RUN mkdir /app

#RUN ADDG ROUP
RUN addgroup -S irgroup
RUN adduser -S -D -h /app iruser irgroup
RUN chown -R iruser:irgroup /app

#change user root menjadi user iruser
USER iruser

#environment setting
ENV APP_PORT=8080
#ENV APP_DATA=/logs 

#menjalankan perintah membuat file yaitu file app_data
#RUN mkdir ${APP_DATA}

#untuk mengcopy file main.go ke folder /app
COPY main.go /app

#untuk expose/memberi tahu port yang dipakai
EXPOSE ${APP_PORT}

#setting volume atau tempat penyimpanan di docker volume'
#serta membuatkan langsung docker volumenya
#VOLUME ${APP_DATA}

# untuk memjalankan file main.go
CMD go run /app/main.go

# docker build -t golang-ku-2 docker-user-instruction
# docker container create --name user-instruction -p 8080:8080 golang-ku-2 
# docker container start user-instruction
# docker container logs user-instruction
# docker container inspect user-instruction
# docker container exec -i -t user-instruction(namakontainer) /bin/sh 