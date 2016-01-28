FROM ubuntu:14.04
MAINTAINER oloc

EXPOSE 80
EXPOSE 443

ENV DEBIAN_FRONTEND  noninteractive

RUN apt-get update && \
    apt-get --no-install-recommends install -q -y \
    nagios3 nagios-plugins \
    && apt-get clean

COPY resources/run.sh /usr/local/bin/run.sh

CMD ["/usr/local/bin/run.sh"]
