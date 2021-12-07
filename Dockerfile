FROM debian:bullseye-slim

RUN apt update && apt upgrade -y
RUN apt install gcc make -y

WORKDIR /opt/galactus
COPY . .

RUN make

CMD ["/opt/galactus/galactus"]
