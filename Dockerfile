FROM alpine:latest

WORKDIR /root
# fix library dependencies
# otherwise golang binary may encounter 'not found' error
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

COPY bin/sslserver /root/sslserver
COPY certs/server.pem /root/certs/server.pem
COPY certs/server.key /root/certs/server.key

VOLUME /root/certs

CMD ["./sslserver"]
