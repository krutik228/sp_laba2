FROM python:3.8

USER root
RUN mkdir -p /project/app/
COPY . /project/app
COPY ./entrypoint.sh /entrypoint.sh
WORKDIR /project/app

RUN chmod +x /entrypoint.sh

RUN apt-get update
RUN apt install -y gcc-multilib build-essential
RUN gcc -m32 -fno-pie -no-pie main.s -o laba -g

CMD ["/entrypoint.sh"]
