FROM nginx:latest

RUN apt update -y && apt install git -y \
    && git clone https://github.com/dRadv/PeEx_Tasks.git \
    && cat PeEx_Tasks/nebo_file.txt > /usr/share/nginx/html/index.html \
    && rm -rf PeEx_Tasks/

WORKDIR /usr/share/nginx/html

EXPOSE 80

