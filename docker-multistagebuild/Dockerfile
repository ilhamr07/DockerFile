FROM golang:1.18-alpine as builder

WORKDIR /app/
COPY main.go /app/
RUN go build -o /app/main /app/main.go

FROM alpine:3
WORKDIR /app/
COPY --from=builder /app/main /app/
CMD /app/main


# docker build -t docker-multi docker-multistagebuild
# docker container create --name multi -p 8080:8080 docker-multi 
# docker container start multi
# docker container logs multi
# docker container inspect multi
# docker container exec -i -t multi(namakontainer) /bin/sh .