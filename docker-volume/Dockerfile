#referensi docker image dari docker hub
FROM golang:1.18-alpine

#untuk menentukan home folder docker image
WORKDIR /app

#environment setting
ENV APP_PORT=8080
ENV APP_DATA=/logs 

#menjalankan perintah membuat file yaitu file app_data
RUN mkdir ${APP_DATA}

#untuk mengcopy file main.go ke folder /app
COPY main.go /app

#untuk expose/memberi tahu port yang dipakai
EXPOSE ${APP_PORT}

#setting volume atau tempat penyimpanan di docker volume'
#serta membuatkan langsung docker volumenya
VOLUME ${APP_DATA}

# untuk memjalankan file main.go
CMD go run main.go

# docker build -t golang-ku-2 dockerfile-volume
# docker container create --name volume --env APP_PORT=9090 -p 9090:9090 golang-ku-2 
# docker container start volume
# docker container logs volume
# docker container inspect volume
# docker container exec -i -t volume(namakontainer) /bin/sh .