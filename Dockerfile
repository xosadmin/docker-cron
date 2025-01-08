FROM ubuntu:noble

RUN apt-get update -y && apt-get install -y \
    cron \
    tzdata

RUN apt clean all && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /

RUN chmod a+x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
