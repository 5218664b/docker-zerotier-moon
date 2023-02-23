ARG ALPINE_VERSION=edge

FROM alpine:${ALPINE_VERSION}

ARG ZT_VERSION=1.10.3-r0

LABEL maintainer="seedgou <seedgou@gmail.com>"

RUN apk add --no-cache zerotier-one=${ZT_VERSION}

COPY startup.sh /startup.sh
EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh -4 docker-zerotier-moon-production.up.railway.app -p 9993"]
