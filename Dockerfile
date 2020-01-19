FROM python:alpine
MAINTAINER Robin van der Linde (robin.vanderlinde@gmail.com)
RUN apk add --no-cache git shellinabox --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN git clone https://github.com/openstreetcam/upload-scripts.git
RUN cd upload-scripts && pip3 install -r requirements.txt
RUN passwd -d root
RUN echo '#...' >> /etc/securetty
RUN echo 'pts/0' >> /etc/securetty
RUN echo 'pts/1' >> /etc/securetty
RUN echo '#...' >> /etc/securetty
EXPOSE 4200
ENTRYPOINT shellinaboxd --disable-ssl