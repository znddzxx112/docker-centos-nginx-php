From centos6nginxphp

COPY ./root /

ADD src/s6-overlay-amd64.tar.gz /

RUN sh scripts/prepare.sh

ENTRYPOINT ["/init"]
