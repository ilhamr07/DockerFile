FROM nginx:alpine


RUN apk add vim curl 

ADD about.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
COPY *.txt  /usr/share/nginx/html

RUN mkdir hello
COPY temp/* hello


LABEL "dibuat oleh"=pemudajomblo
LABEL company=maubangkrut 




