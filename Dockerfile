FROM ubuntu:latest
MAINTAINER kangju<kangju0815@gmail.com>

RUN apt-get install -y wget
RUN cd /root && \
   wget http://download.ap.bittorrent.com/track/beta/endpoint/utserver/os/linux-x64-ubuntu-12-04 -O utorrentserver.tar.gz && \
   mkdir /root/utorrentserver && \
   tar xzf /root/utorrentserver.tar.gz -C /root/utorrentserver

CMD /root/utorrentserver/userver
