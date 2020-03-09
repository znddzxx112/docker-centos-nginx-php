From ubuntu1804nginxphp

COPY ./root /
COPY ./scripts /scripts

ADD src/s6-overlay-amd64.tar.gz /

RUN sh scripts/prepare.sh

ENTRYPOINT ["/init"]
