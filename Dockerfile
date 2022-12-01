FROM alpine:latest
LABEL maintainer 'lab-xyz <mail@10110110.xyz>'

RUN apk update && \
    apk add --no-cache tor && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["tor"]
