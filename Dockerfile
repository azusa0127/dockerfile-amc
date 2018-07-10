FROM alpine:3.8

LABEL maintainer "phoenix <github.com/azusa0127>"

RUN apk add --no-cache curl
RUN curl -L "https://www.aerospike.com/artifacts/aerospike-amc-community/4.0.19/aerospike-amc-community-4.0.19-linux.tar.gz" | tar -xzC /
RUN apk del curl
RUN ln -sf /dev/stdout /var/log/amc/amc.log
RUN ln -sf /dev/stderr /var/log/amc/error.log

EXPOSE 8081

ENTRYPOINT [ "/opt/amc/amc", "-config-file=/etc/amc/amc.conf"]
