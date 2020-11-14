FROM debian:10

RUN apt-get update -yq \
&& apt-get install -yq gdebi procps udev nano \
&& apt-get clean -y

ADD ./scripts /scripts/
WORKDIR /scripts

ADD ./packages /packages/
WORKDIR /packages

RUN gdebi --non-interactive /packages/jet1oeil-server-4.1.0r5812-debian~buster_amd64.deb
RUN gdebi --non-interactive /packages/jet1oeil-monitor-1.5.1-debian~buster_amd64.deb

EXPOSE 25000

CMD /scripts/start.sh
