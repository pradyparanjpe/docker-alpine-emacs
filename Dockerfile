FROM alpine:3.19.1

MAINTAINER Pradyumna Paranjape "pradyparanjpe@rediffmail.com"

RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf \
    && apk update \
    && apk add ca-certificates emacs-nox

WORKDIR /root

COPY init.el /root/.emacs.d/
COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "emacs" ]
