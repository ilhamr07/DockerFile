FROM nginx:alpine


RUN apk add vim curl 

ADD Docker-File/about.html /usr/share/nginx/html
ADD Docker-File/style.css /usr/share/nginx/html

LABEL "dibuat oleh"=pemudajomblo
LABEL company=maubangkrut




